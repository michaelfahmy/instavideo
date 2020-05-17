require 'rails_helper'

RSpec.describe VideoPost, type: :model do
  describe 'model' do
    subject(:post) { described_class.new }

    it 'has attributes' do
      aggregate_failures do
        expect(post).to have_db_column(:provider).of_type(:string).with_options(null: false)
        expect(post).to have_db_column(:video_uid).of_type(:string).with_options(null: false)
        expect(post).to have_db_column(:title).of_type(:string)
        expect(post).to have_db_column(:description).of_type(:text)
        expect(post).to have_db_column(:channel_title).of_type(:string)
        expect(post).to have_db_column(:default_audio_language).of_type(:string)
        expect(post).to have_db_column(:published_at).of_type(:datetime)
        expect(post).to have_db_column(:tags).of_type(:string).with_options(array: true, default: [])
        expect(post).to have_db_column(:thumbnails).of_type(:jsonb).with_options(null: false, default: '{}')
        expect(post).to have_db_column(:created_at).of_type(:datetime).with_options(null: false)
        expect(post).to have_db_column(:updated_at).of_type(:datetime).with_options(null: false)
      end
    end

    it 'has indexes' do
      aggregate_failures do
        expect(post).to have_db_index(%i[provider video_uid]).unique
        expect(post).to have_db_index([:user_id])
      end
    end
  end
end
