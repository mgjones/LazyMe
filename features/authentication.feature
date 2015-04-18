Feature: log_in and log_out
  As the website user,
  so that I can save my favorite product on the website,
  I want to have an account in the website and be able to sign in.

  Background: the LazyMe website has some users
    Given these Users:
      | email                    |password|
      | nolan@colgate.edu        |12345678|
      

    Scenario: Sign in
      When I go to the searchs page
      And I follow "Log in"
      Then I should be on the new user session page
      And I fill in "user_email" with "nolan@colgate.edu"
      And I fill in "user_password" with "12345678"
      And I press "Log in"
      Then I should be on the home page
      And I should see "nolan@colgate.edu"

    Scenario: Sign in with github
      When I go to the new user session page
      And I follow "Sign in with Github"
      #Then I should be on the new user session page 
      
  
  