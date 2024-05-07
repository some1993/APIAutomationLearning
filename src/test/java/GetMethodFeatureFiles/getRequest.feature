Feature: To hit the get API
  Background: setting the base path
    * url 'http://localhost:9191'

  Scenario: Get API
    Given path 'normal/webapi/all'
    When method get
    Then status 200



  Scenario: Get the API details in ResponseFile.json Format
    Given path 'normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    Then status 200
