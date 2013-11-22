Given /^there are no mindful events scheduled today$/ do
end


Given /^there are some mindful events scheduled today$/ do
  @mindful_events = [
    Mindful_event.new("not_started", "San Francisco"),
    Mindful_event.new("not_started", "San Jose"),
    Mindful_event.new("not_started", "Santa Maria"),
    Mindful_event.new("in_session", "Santa Ana"),
    Mindful_event.new("in_session", "Santa Cruz")
  ]
end


When /^I go to the scheduled mindful events display page$/ do
    visit scheduled_today_mindful_events_url 
end

Then /^I should see that there are no mindful events scheduled today$/ do
    page.should have_content("There are no mindful events scheduled today")
end


Then /^I should see the scheduled mindful events grouped by status$/ do
  @mindful_events.each do | mindful_event |
    within(".#{mindful_event.status}") do
      page.should have_css(".mindful_event", text: mindful_event.location)
    end
  end
end


