Feature: Adding the variable in multiple Scenario files
  Background: Defining the variable in the background so it can be used in any Scenario
    * def a1 = 10
    * def a2 = 20
    * def browser = "Chrome"

    Scenario: printing the variables declared in the Background section
     Then print "Value of a1 = ", a1
     And print "Value of a2 = ", a2
     And print "Value of the browser = ", browser

    Scenario: Invoking the vales declared in the background and performing addition
      * def a3 = a1 + a2
      Then print "After adding a1 and a2 = ",a3