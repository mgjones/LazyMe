Feature: Create Review
    As a user
    so that I can add comments about refrigerators I don't like
    I want to be able to rate and comment refrigerators

    Scenario: Go to the review page
        When I go to the refrigerator page
        When I press "Create a Review"
        Then I should be on the "Create a Review" page

    Scenario: Rating and reviewing a refrigerator
        When I go to the "Create a Review" page
        When I fill in "Cube Rating" with "2"
        And I fill in "Write Your Review" with "This is an average refrigerator"
        And I press "Submit This Review"
        Then I should be on the refrigerator page
        And I should see the new review listed under "All Product Reviews"
