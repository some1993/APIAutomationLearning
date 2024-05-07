Feature: Creating/Declaring a variable
  # <Gherkin Keyword> <def> <Variable Name> = Value
  Scenario: To create a variable
    # Use variable for repating value
    # Storing the data from external file
    # In the matcher expression
    # Passing the data from one feature file to another
  Given def var_int = 10
    And def var_string = "karate"
    Then print "Int Variable = ", var_int
    Then print "String Variable = ", var_string
