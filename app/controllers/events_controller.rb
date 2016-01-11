class EventsController < ApplicationController

  def index

  end


  def create
    @
  end


  private

  def event_params
    params.requite(:event).permit(:period, :title, :morning)

  end
end
