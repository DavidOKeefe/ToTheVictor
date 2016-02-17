Feature: Signing out

  Scenario: Logging out a signed in user
    Given I am a logged in user
    When I click the 'Logout' link
    Then I see 'Signed out successfully.'
