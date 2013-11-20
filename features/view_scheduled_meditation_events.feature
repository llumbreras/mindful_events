Feature: View meditation events scheduled today

  Scenario: No meditation events scheduled today
    Given there are no meditation events scheduled today
    When I go to the scheduled meditation event display page
    Then I should see that there are no meditation events scheduled today

 
