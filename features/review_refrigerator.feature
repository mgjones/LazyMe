Feature: Create Review
    As a user
    so that I can add comments about refrigerators I don't like
    I want to be able to rate and comment refrigerators

    Background:
    Given this Refrigerator:

    |brand      |model          |rating |configuration  |kwh_per_year|
    |Whirlpool  |WRT134TFD*0*   |N/A    |Top Freezer    |336         |
    
  
    Scenario: Go to Create a Review Page
        When I go to the refrigerators page
        And I follow "Whirlpool"
        Then I should see "Details for Whirlpool WRT134TFD*0*"
        Then I should see "Create a Review"
        And I follow "Create a Review"
        Then I should see "Create a Review" 

    Scenario: Making a Review
        When I go to the refrigerators page
        And I click "Whirlpool" link
        And I should see "Details for Whirlpool WRT134TFD*0*"
        When I follow "Create a Review"
        And I fill in "Description" with "Great"
        And I fill in "Rating" with "5"
        And I press "Create Review"
        Then I should see "Details for Whirlpool WRT134TFD*0*"
        And I should see "New review created successfully"
        And I should see "Great"
        And I click "like 0" link
        Then I should see "Other Links"
        And I should see "like 1"
        And I click "dislike 0" link
        Then I should see "Other Links"
        And I should see "dislike 1"
