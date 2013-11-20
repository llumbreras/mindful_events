Feature: View mindful events scheduled today

  Scenario: No mindful events scheduled today
    Given there are no mindful events scheduled today
    When I go to the scheduled mindful event display page
    Then I should see that there are no mindful events scheduled today

  Scenario: Some mindful events scheduled today
    Given there are some mindful events scheduled today
    When I go to the scheduled mindful event display page
    Then I should see the scheduled mindful events grouped by status 

