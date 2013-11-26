module Mindful_events
  module Mindful_events
    module Presenters
      class Collection
        def self.for(mindful_events)
          new(mindful_events)
        end

        attr_reader :mindful_events
        
        def initialize(mindful_events)
          @mindful_events = mindful_events
        end

        def not_started(&block)
          self.mindful_events.select{ |cr| cr.status == "not_started"}.each(&block)
        end

        def in_session(&block)
          self.mindful_events.select{ |cr| cr.status == "in_session"}.each(&block)
        end

      end
    end
  end
end
