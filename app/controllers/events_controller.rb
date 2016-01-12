class EventsController < ApplicationController
  before_action :set_event, only: [:destroy]
  def index
    @events = Event.all.order('created_at DESC')
  end


  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to events_path, notice: 'Work create.'
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end


  private

  def event_params
    params.require(:event).permit(:period, :title, :morning)
  end

  def set_event
      @event = Event.find(params[:id])
  end
end
