class EventsController < ApplicationController
  before_filter :find_competition

  def show
    @event = @competition.events.find(params[:id])
  end

  def new
    @event = @competition.events.new
  end

  def edit
    @event = @competition.events.find(params[:id])
  end

  def create
    @event = @competition.events.new(params[:event])
    if @event.save
      redirect_to(@competition, :notice => 'Event was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @event = @competition.events.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to(@competition, :notice => 'Event was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @event = @competition.events.find(params[:id])
    @event.destroy
    redirect_to(@competition)
  end

  private

  def find_competition
    @competition = Competition.find(params[:competition_id])
  end
end
