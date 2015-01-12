Feature: Starting a game
  As a player
  In order to play Rock, Paper< Scissors
  I need to give my name

  Scenario: Telling game player's name
    Given I have pressed new game
    Then I should see "What is your name?"
    When I input "India"
    Then I should see "Hello, India! Rock, Paper or Scissors?"

  Scenario: Choosing Rock, Paper or Scissors
    Given I am ready to choose
