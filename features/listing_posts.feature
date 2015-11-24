Feature: Listing all posts
  Background:
    Given there are following posts
    | id | author | title | body |
    | 1  | jano   | neco  | text |
    | 2  | igor   | ine   | omg  |

  And I am on root page

  @selenium @javascript
  Scenario: Listing all posts
    Then I should see "jano"