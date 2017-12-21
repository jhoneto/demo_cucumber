Feature: Student page
  As a user
  I want create new student

  Scenario: Create new student
    Given I launch web site
    And I click New Student
    And I enter register 123456
    And I enter name Hamilton
    And I enter email hamilton@teste.com.br
    When I submit form
    Then I see success message



