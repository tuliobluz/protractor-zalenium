Feature: Fill the name
    Scenario: Fill the name to see with hello
        Given The user goes to "https://angularjs.org/"
        When The user adds "Tulio" in the name field
        Then The user should see Hello with the username

    Scenario: Fill the name to see with hello success
        Given The user goes to "https://angularjs.org/"
        When The user adds "Tulio" in the name field
        Then The user should see Hello with the username success
    
    Scenario: Fill the name to see with hello success 2
        Given The user goes to "https://angularjs.org/"
        When The user adds "Tulio" in the name field
        Then The user should see Hello with the username success 2