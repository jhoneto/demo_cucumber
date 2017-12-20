Feature: Login page
  As a user
  I want access my home page

  Scenario: Accessa login page
    Given I launch web site
    And I click responsible login page
    And I enter username
    And I enter password
    When I click Acessar button
    Then I see Home page
  

  