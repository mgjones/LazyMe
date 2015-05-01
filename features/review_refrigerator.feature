Feature: Create Review
    As a user
    so that I can add comments about refrigerators I don't like
    I want to be able to rate and comment refrigerators

    Background:
    Given this Refrigerator:
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
        
