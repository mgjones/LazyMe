Feature: Search refrigerator
  As an user,
  so that I can search for refrigerators,
  I want to be able to add search for refrigerator I want


  Scenario: Search Refrigerator
    When I go to the searchs page
    And I fill in "looking_for" with "refrigerator"
    And I press "Search"
    Then I should be on the refrigerators page

  Scenario: Advanced Search
    When I go to the searchs page
    And I follow "Advanced Search"
    Then I should see "Advance Search"


  Scenario: Advance Search with refrigerator
    When i go to the search page
    And I fill in "key_word" with "George Foreman Fridge"
    #And I fill in "brand" with ""
    #And I fill in "rating" with ""
    #And I fill in "price" with "999"
    And I press "Search"
    Then I should be on the refrigerators page
    And I should see "George Foreman Fridge"
    And I should not see "Washer-3004"