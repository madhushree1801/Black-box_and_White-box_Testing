Feature: Belly

  Scenario: eaten many cukes and wait 2 and growl
    Given I have eaten 11 cukes
    When I wait 2 hour
    Then my Belly should growl

  Scenario: eaten many cukes and wait 3 and growl
    Given I have eaten 11 cukes
    When I wait 3 hour
    Then my Belly should growl

  Scenario: eaten few cukes and not growl
    Given I have eaten 10 cukes
    When I wait 2 hour
    Then my Belly should not growl

  Scenario: eaten many cukes and not growl
    Given I have eaten 11 cukes
    When I wait 1 hour
    Then my Belly should not growl

  Scenario: no cukes eaten
    Given I have eaten 0 cukes
    When I wait 2 hour
    Then my Belly should not growl

  Scenario: many cukes and no waiting
    Given I have eaten 20 cukes
    When I wait 0 hour
    Then my Belly should not growl

  Scenario: threshold test
    Given I have eaten 10 cukes
    When I wait 3 hour
    Then my Belly should not growl

  Scenario: many cukes long wait
    Given I have eaten 20 cukes
    When I wait 10 hour
    Then my Belly should growl
