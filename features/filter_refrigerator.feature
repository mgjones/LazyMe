Feature: Filter refrigerator
  As an user
  so that I can look up refrigerator I like
  I want to filter refrigerator by price and by rating

  Background:
  Given this Refrigerator:
    |brand                      |model      |rating |configuration  |kwh_per_year   |
    |MicroFridge with Safe Plug |2.5MF4RE   |N/A    |Single Door    |227            |

  Scenario: Clean Filter
    When I go to the refrigerators page
    And I fill in "Rating" with ""
    And I press "Filter"

  Scenario: Show
    When I go to the refrigerators page
    And I follow "MicroFridge with Safe Plug"
    And I should see "Details for MicroFridge with Safe Plug 2.5MF4RE"
