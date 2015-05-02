Feature: My fridges
  As the website user,
  so that I can research fridges,
  I want to select some fridges to compare.

  Background:
  Given this Refrigerator:
    |brand                      |model      |rating |configuration  |kwh_per_year   |
    |MicroFridge with Safe Plug |2.5MF4RE   |N/A    |Single Door    |227            |

  Scenario: Add to my fridges
    Given I am on the refrigerators page
    And I follow "+"
    And I should be on the refrigerators page

  Scenario: View my fridges
    Given I am on the refrigerators page
    And I follow "+"
    And I should be on the refrigerators page
    And I follow "MicroFridge with Safe Plug"
    And I follow "My Fridges"
    And I should be on the shopping cart page