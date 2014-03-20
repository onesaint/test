Feature: Delete a job

As a admin
So that I delete a job form “Monkey Banana”.
I want to delete a job that closed off recruit form database.

Background: addmin can delete job to Job Database


  Given the following jobs exist:
  | company_name        | province   | position   | qualification | numb   | start_date | deadline   | link              |
  | Samart              | Bangkok    | programmer | GPA>2.7       | 1      | 2014-02-17 | 2014-02-20 | www.samart.com    |

  
  And I am on the admin page

  Scenario: try delete job from table.
  When I follow "delete"
  Then I am on the monkeybanana home page
  And I should not see "Samart"



  
  
 
