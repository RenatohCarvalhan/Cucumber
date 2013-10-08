Feature: Manage User

Scenario: Create New User 
  When I go to the list users
  Given I not have users
  And I follow "New User"
  And I fill in "Email" with "renato.carvalhan@user.com"
  And I fill in "Password" with "12345678"
  And I fill in "Password confirmation" with "12345678"
  And I press "Sign up"

Scenario: List Users
  Given I am a new, authenticated user
  And I am logged renato@user.com with 12345678
  When I go to the list users
  Then I should see "renato@user.com"
  And I should see "Edit profile"

Scenario: Edit User
  Given I am a new, authenticated user
  And I am logged renato@user.com with 12345678
  When I go to the list users
  Then I should see "renato@user.com"
  And I should see "Edit profile"
  And I follow "Edit profile"
  And I fill in "Email" with "renato@user.com"
  And I fill in "Password" with "123456789"
  And I fill in "Password confirmation" with "123456789"
  And I fill in "Current password" with "12345678"
  And I press "Update"

Scenario: Delete User
  Given I am a new, authenticated user
  And I am logged renato@user.com with 12345678
  When I go to the list users
  Then I should see "Destroy"
  And I follow link for "delete_1"

Scenario: Login and Logout
  Given I am a new, authenticated user
  And I am logged renato@user.com with 12345678
  Then I should see "Logout"
  And I follow "Logout"

