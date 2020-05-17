class VideoPostsController < ApplicationController
  before_action :authenticate_user!

  def new; end

  def create
    # TODO: Import video data from Youtube API and create VideoPost record
    if params[:link].match?(/youtu.be|youtube.com/)
      redirect_to root_path, notice: 'Video posted successfully!'
    else
      flash.now[:alert] = 'Video link is invalid, please use a valid link!'
      render :new
    end
  end
end
