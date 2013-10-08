Feature: Manage Articles
  In order to make a blog
  As an heroes
  I want to create and manage articles 

Background: Create and logged User
  Given I am a new, authenticated user
  And I am logged renato@user.com with 12345678

Scenario: Create new Aticle
  When I go to the list of articles
  Given I not have aticles
  And I follow "New Article"
  And I fill in "Title" with "Batman"
  And I fill in "Context" with "I'm Batman"
  And I press "Create Article"

Scenario: Articles List
  Given I have articles titled Batman, Robin and with context I'm Batman, I'm Robin
  When I go to the list of articles
  Then I should see "Batman", "I'm Batman"
  And I should see "Robin", "I'm Robin"

Scenario: Edit Article
  Given I have articles titled Batman, Robin and with context I'm Batman, I'm Robin
  When I go to the list of articles
  Then I should see "Batman", "I'm Batman"
  And I should see "Robin", "I'm Robin"
  And I should see "Edit"
  And I follow link for "edit_1"
  And I fill in "Title" with "Robin"
  And I fill in "Context" with "I'm Robin"
  And I press "Update Article"

Scenario: Delete Article
  Given I have articles titled Batman, Robin and with context I'm Batman, I'm Robin
  When I go to the list of articles
  Then I should see "Batman", "I'm Batman"
  And I should see "Robin", "I'm Robin"
  And I should see "Destroy"
  And I follow link for "delete_1"
