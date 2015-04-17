Feature: log_in and log_out
  As the website user,
  so that I can save my favorite product on the website,
  I want to have an account in the website and be able to sign in.

  Background: the LazyMe website has some users
    Given these Users:
      | email         |   encrypted_password|
      | nolan         | 12345678            |
      

    Scenario: Sign in
      When I go to the searchs page
      And I follow "Log in"
      Then I should be on the new user session page
      And I fill in "email" with "nolan"
      And I fill in "password" with "12345678"
      And I press "Sign In"
      Then I should be on the searchs page
      And I should see "nolan"

    Scenario: Sign in with github
      When I go to the new user session page
      And I follow "Sign in with github"
      Then I should be on the new user session page 
      
  
  