Feature: Filter refrigerator
  As an user
  so that I can look up refrigerator I like
  I want to filter refrigerator by price and by rating


  Scenario: Filter by price
    When I go to the refrigerators page
    And I fill in "min" with "1000"
    And I fill in "max" with "4000"
    And I press "Filter"
    Then I should be on the refrigerators page
    #And I should see "Washer-3000"
    And I should not see "Washer-3004"
    And I should not see "Washer-3001"

  Scenario: Clean Filter
    When I go to the refrigerators page
    And I fill in "min" with ""
    And I press "Filter"

  Scenario: Show
    When I go to the refrigerators page
    And I follow "Washer-3000"
    And I should see "detail"