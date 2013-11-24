require 'spec_helper'

describe MindfulEventsController do
  describe "GET /scheduled_today" do
    it "uses a mindful_events collection parameters" do
      mindful_events_presenter = stub

      stub_const("Mindful_events::Mindful_events::Presenters::Collection", stub(for: mindful_events_presenter))

      get :scheduled_today
      expect(assigns(:mindful_events)).to be(mindful_events_presenter)
    end
  end
end

