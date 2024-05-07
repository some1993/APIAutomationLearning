Feature: To validate the GET End point
  To validate the get end point response
  Background: To set the base path
  Given url 'http://localhost:9191'

    Scenario: To get the date in the ResponseFile.json format
    Given path '/normal/webapi/all'
      And header Accept = 'application/json'
      When method get
      Then status 200
      And print response
      And match response contains deep {"jobDescription": "To develop andriod application"}


    Scenario: To get the path in XML format
    Given path '/normal/webapi/all'
      And header Accept = 'application/xml'
      When method get
      Then status 200
      And print response
