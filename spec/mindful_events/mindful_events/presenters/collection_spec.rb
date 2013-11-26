require 'mindful_events/presenters/collection'

describe Mindful_events::Mindful_events::Presenters::Collection do
  context "getting mindful events grouped by status" do
    let(:not_started) { stub("not_started", status: "not_started")}
    let(:in_session) { stub("in_session", status: "in_session")}
    let(:mindful_events) { [not_started, in_session] }

   


    it "exposes those in status not_started" do

      presenter = Mindful_events::Mindful_events::Presenters::Collection.for(mindful_events)
      expect{|b| presenter.not_started(&b) }.to yield_successive_args(not_started)
    end

    it "exposes those in status in_session" do

      presenter = Mindful_events::Mindful_events::Presenters::Collection.for(mindful_events)
      expect{|b| presenter.in_session(&b) }.to yield_successive_args(in_session)
 
    end
  end
end
