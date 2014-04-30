class EventsController < ApplicationController
      before_filter :find_event, :only => [ :show, :edit, :update, :destroy]
      def index
      	  @events = Event.all
      end
      def new 
      	  @event = Event.new
      end
      def create
      	  @event = Event.new(params[:event])
	  @event.save
	  redirect_to events_url
      end
      def show 
	  @page_title = @event.name
      end
      def edit
      end
      def update
            @event.update_attributes(params[:event])
	    redirect_to event_url(@event)
      end
      def destroy
      	  @event.destroy
      end
      
      def find_event
            @event = Event.find(params[:id])
      end

end
