class EntriesController < ApplicationController

  def index
    @user = User.find(params[:user_id]) # @user = current_user
    @competition = Competition.find(params[:competition][:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to(user_path(@entry.user)) # destory した後でも @entry 使ってる
  end

end
