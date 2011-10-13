class EntriesController < ApplicationController

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to(user_path(@entry.user)) # destory した後でも @entry 使ってる
  end

end
