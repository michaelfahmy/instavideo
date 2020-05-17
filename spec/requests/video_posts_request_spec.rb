require 'rails_helper'

RSpec.describe 'VideoPosts', type: :request do
  let(:user) { create(:user) }

  describe 'GET /new' do
    context 'without signed in user' do
      it 'redirects to sign_in page' do
        get '/video_posts/new'
        aggregate_failures do
          expect(response).to redirect_to(new_user_session_path)
          follow_redirect!
          expect(response.body).to include('You need to sign in or sign up before continuing.')
        end
      end
    end

    context 'with signed in user' do
      before { sign_in user }

      it 'returns http success' do
        get '/video_posts/new'
        aggregate_failures do
          expect(response).to have_http_status(:success)
          expect(response).to render_template(:new)
        end
      end
    end
  end

  describe 'POST /create' do
    def create_request(link = 'https://www.youtube.com/watch?v=C0DPdy98e4c')
      post '/video_posts', params: { link: link }
    end

    context 'without signed in user' do
      it 'redirects to sign_in page' do
        aggregate_failures do
          expect { create_request }.not_to change(VideoPost, :count)
          expect(response).to redirect_to(new_user_session_path)
          follow_redirect!
          expect(response.body).to include('You need to sign in or sign up before continuing.')
        end
      end
    end

    context 'with signed in user' do
      before { sign_in user }

      context 'with valid link' do
        it 'creates the video post successfully' do
          aggregate_failures do
            create_request
            expect(response).to redirect_to(root_path)
            follow_redirect!
            expect(response).to render_template('home/index')
            expect(response.body).to include('Video posted successfully!')
          end
        end
      end

      context 'with invalid link' do
        it do
          aggregate_failures do
            create_request('https://www.yout-ube.com/watch?v=')
            expect(response).to render_template(:new)
            expect(response.body).to include('Video link is invalid, please use a valid link!')
          end
        end
      end
    end
  end
end
