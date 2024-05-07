Feature: Checking the ResponseFile.json key value pair validation
  Background: Setting the base url
    Given url 'http://localhost:9191'

   Scenario: validating the ResponseFile.json response
     Given path 'normal/webapi/all'
     And header Accept = 'application/json'
     When method get
     Then status 200
     And print response
     And match response.[0].jobTitle == '#string'
     And match response.[0].jobId == '#number'
     And match response.[0].experience == '#array'
     And match response.[0].project.[0].projectName == '#notnull'
     And match response.[0].project.[0].technology == '#present'