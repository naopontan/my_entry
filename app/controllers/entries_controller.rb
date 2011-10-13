class EntriesController < ApplicationController

  def index
    @user = User.find(params[:user_id]) # @user = current_user
    @competition = Competition.find(params[:competition][:id])
  end

  def new
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @entry = @user.entries.build(:event_id => @event.id)
  end

  def create
    @entry = Entry.new(params[:entry])
    @user = @entry.user
    @event = @entry.event
    if @entry.save
      redirect_to(@user, :notice => 'Entry was successfully created.')
    else
      render :action => :new
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to(user_path(@entry.user)) # destory した後でも @entry 使ってる
  end

end
