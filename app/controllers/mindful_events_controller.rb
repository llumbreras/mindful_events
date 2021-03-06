Mindful_event = Struct.new :status, :location

class MindfulEventsController < ApplicationController

  def scheduled_today
    mindful_events = [
        Mindful_event.new("not_started", "San Francisco"),
        Mindful_event.new("not_started", "San Jose"),
        Mindful_event.new("not_started", "Santa Maria"),
        Mindful_event.new("in_session", "Santa Ana"),
        Mindful_event.new("in_session", "Santa Cruz")
    ]
    @mindful_events = Mindful_events::Mindful_events::Presenters::Collection.for(mindful_events)
  end

end
