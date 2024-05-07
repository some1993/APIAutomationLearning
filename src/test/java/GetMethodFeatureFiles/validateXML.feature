Feature: Verifying the XML response
  Background: Setting the base path
    Given url 'http://localhost:9191'

    Scenario: hitting the Get url and validating the response
      Given path 'normal/webapi/all'
      And header Accept = 'application/xml'
      When method get
      Then status 200
      And print response
      And match response/List/item/jobId == '1'
      And match response/List/item/experience/experience[1] == 'Google'
      And match response/List/item/project/project/projectName == 'Movie App'
      And match response/List/item/project/project/technology/technology[3] == 'Gradle'
