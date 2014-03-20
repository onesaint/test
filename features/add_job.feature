Feature: add a job
 
  As a people want to share
  So that I can share a job with other users
  I want to add new job of company are open to internship to Monkey Banana.

Background: addmin can add job to Job Database

  

  Given  I am on new page

Scenario: Try to add all field

When I fill in "company name" with "Samart Corporation"
When I fill in "location" with "Bangkok"
When I fill in "position" with "Programmer"
When I fill in "number of admission" with "5"
When I fill in "link" with "www.samartcorp.com"
When I fill in "qualification" with "Bachelor of Engineering'"
When I press "Save Changes"
Then I should be on the monkeybanana home page
Then I should see "Samart Corporation"
Then I should see "Programmer"
Then I should see "5"
Then I should see "Bangkok"

Scenario: Try to add not all field
And I press "Save Changes"
Then I should be on error page
