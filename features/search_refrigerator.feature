Feature: Search refrigerator
  As an user,
  so that I can search for refrigerators,
  I want to be able to add search for refrigerator I want


  Scenario: Search Refrigerator
    When I go to the searchs page
    And I fill in "looking_for" with "wi"
    And I press "Search"
    Then I should be on the refrigerators page

  Scenario: Advanced Search
    When I go to the searchs page
    And I follow "Advanced Search"
    Then I should see "Advanced Search"


## Working on Advanced Search
#  Scenario: Advanced Search with refrigerator
 #   When I go to the search page
#
 #   And I fill in "Brand" with ""
  #  And I fill in "Min Rating" with "0"
   # And I fill in "Popularity" with "2"
    #And I fill in "Model" with ""
#    And I press "Filter"
   # Then I should be on the refrigerators page
    

  Scenario: empty search
   When I go to the searchs page
   And I fill in "looking_for" with ""
   Then I should be on the searchs page

  

