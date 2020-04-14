Feature: Sanity Test of Automation Practice Website

  #Given, When, Then, And, But

  Background: This is a set up that runs before each scenario
    Given I navigate to 'automation practice' website in the browser

  @sanity
  Scenario: Navigation to Evening Dresses page successful
    Given I hover over on 'WOMEN' tab in home page
    And I click on 'Evening Dresses' tab in navigation menu
    Then I see 'Evening Dresses' title in evening dresses page