Feature: Account types

  Scenario: Driver user
    Given the user logged in as a "driver"
    When the user navigates "Activities" "Calendar Events"
    Then the title should contains "Calendar Events - Activities"

  Scenario: Sales manager user
    Given  the user logged in as a "sales manager"
    When the user navigates "Customers" "Accounts"
    Then the title should contains "Accounts - Customers"

  Scenario: Store manager user
    Given  the user logged in as a "store manager"
    When the user navigates "Marketing" "Campaigns"
    Then the title should contains "All - Campaigns - Marketing"
 # we are trying to run all these scenarios in ddt
#  Scenario: Login with different users
#    Given the user logged in as a "driver"
#
#  Scenario: Login with different users
#    Given the user logged in as a "sales manager"
#
#  Scenario: Login with different users
#    Given the user logged in as a "store manager"
  @wip
  Scenario Outline: Login with different users
    Given the user logged in as a "<usertypes>"
    When the user navigates "<tab>" "<module>"
    Then the title should contains "<title>"
    Examples:
      | usertypes     | tab        | module          | title                        |
      | driver        | Activities | Calendar Events | Calendar Events - Activities |
      | sales manager | Customers  | Accounts        | Accounts - Customer          |
      | store manager | Marketing  | Campaigns       | All - Campaigns - Marketing  |
