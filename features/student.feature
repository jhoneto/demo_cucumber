Feature: Student page
  As a user
  I want create new student

  Scenario: Create new student
    Given I launch web site
    And I click New Student
    And I enter register
    And I enter name
    And I enter email
    When I submit form
    Then I see success message



