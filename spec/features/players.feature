Feature: Players
  Background:
    Given I am a logged in user

  @player
  Scenario: Player feature tour
    Given I am at the players index
    And I click the "+ Player" link
    When I name the new player "Esme"
    And I click the "Add Player" button
    Then I see "Player created"
    And I see "Esme"

    When I click the 'Edit' link
    And I update the player name "John Snow"
    And I click the 'Update Player' button
    Then I see 'Player Updated'
    And I see "John Snow"

    When I click the "Edit" link
    And I click the "Delete" button
    Then I see "Player deleted"
    And I do not see "Esme"
