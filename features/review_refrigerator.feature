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

    Given this Review:
    |description            |rating |upvote         |downvote           |author     |
    |Its decent             |4      |like 10        |dislike 2          |Anonymous  |



    Scenario: Like/Dislike a Review
        When I go to the refrigerators page
        And I click "Whirlpool" link
        And I should should see "Other Links"
        ##may need another line here
        And I should see "-- Reviews --"
        And I should see "1"

    |brand                  |model      |model_variations     |configuration     |defrost_type    |
    |George Foreman Fridge  |xxx        |yyy                  |side-by-side      |automatic       |

    Scenario: Making a Review
        When I go to the refrigerators page
        And I click "George Foreman Fridge" link
        And I should see "Detail for George Foreman Fridge"
        When I follow "Create a review"
        And I fill in "Rating" with "2"
        And I fill in "Write Your Review" with "this is an amazing refrigerator! it even has a built in grill!"
        And I press "Submit This Review"
        Then I should see "Detail for George Foreman Fridge"
        And I should see "Review successfully created."

        
