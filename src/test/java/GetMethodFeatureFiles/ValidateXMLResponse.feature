Feature: To get and match the response from the XML file
  Background: defining the url
    Given url 'http://localhost:9191'

  Scenario: To hit the get API and match the response
    Given path 'normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
    * def actualResponse = read("../Payloads/XmlResponseFile.xml")
    And print "Actual response = ", actualResponse
    And match response == actualResponse