Feature: Create Review
    As a user
    so that I can add comments about refrigerators I don't like
    I want to be able to rate and comment refrigerators

    Background:
    Given this Refrigerator:
    |name                   |price      |rating     |popularity     |keyfeatures    |
    |George Foreman Fridge  |999.00     |5.0        |0.0            |built in grill |

    Scenario: Making a Review
        When I go to the refrigerators page
        And I click "George Foreman Fridge" link
        And I should see "Detail for George Foreman Fridge"
        When I follow "Create a review"
        And I fill in "Cube Rating" with "2"
        And I fill in "Write Your Review" with "this is an average refrigerator"
        And I press "Submit This Review"
        Then I should see "Detail for George Foreman Fridge"
        And I should see "All Product Reviews"
        
