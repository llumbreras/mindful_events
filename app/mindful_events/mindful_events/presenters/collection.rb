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

        ["not_started"].each do |status|
          define_method status do |&block|
            in_status(status, &block)
          end
        end

        ["in_session"].each do |status|
          define_method status do |&block|
            in_status(status, &block)
          end
        end

        def in_status(status, &block)
          self.mindful_events.select{ |me| me.status == status }.each(&block)
        end
      end
    end
  end
end
