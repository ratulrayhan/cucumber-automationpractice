Feature: Test Search Dresses Functionalities

  Background: This is a set up that runs before each scenario
    Given I navigate to 'automation practice' website in the browser

  @regression
  Scenario Outline: Test Search Functionality for <dress_name> Dress Types
    Given I type "<dress_name>" in the 'search box' in home page
    Then I click 'search box' in home page
    Then I see "<dress_name>" in search result page

    Examples: Test Data
      | dress_name                  |
      | Faded Short Sleeve T-shirts |
      | Blouse                      |

  @regression
  Scenario: Test Search Functionality for Printed Summer Dress Dress Types
    Given I type "Printed Summer Dress" in the 'search box' in home page
    Then I click 'search box' in home page
    Then I see the following in search result page
      | Printed Summer Dress  |
      | Printed Summer Dress  |
      | Printed Chiffon Dress |


  @regression
  Scenario Outline: Test Search Functionality for <resultName> Dress Types with price <price>
    Given I type "Printed Summer Dress" in the 'search box' in home page
    Then I click 'search box' in home page
    Then I see the following search result items in search result page
      | title        | price   | index   |
      | <resultName> | <price> | <index> |
    Examples: Test Data
      | resultName            | price  | index |
      | Printed Summer Dress  | $28.98 | 0     |
      | Printed Summer Dress  | $30.50 | 1     |
      | Printed Chiffon Dress | $16.40 | 2     |