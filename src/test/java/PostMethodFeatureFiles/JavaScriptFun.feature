Feature: To run the Java Script function

  Scenario: Evaluate the Java Script function with and without parameter
    * def getIntValue = function(){ return 10;}
  Then print "Function Value = ",getIntValue()
    * def getRandomValue = function(){ return Math.floor((100) * Math.random())}
    Then print "Random Value = ", getRandomValue()
    * def stringValue = function(arg1) { return "Hello " + arg1;}
    Then print "Value of the String",stringValue("World")
