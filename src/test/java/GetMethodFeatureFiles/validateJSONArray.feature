Feature: Checking the array validation
  Background: Setting the base path
   Given url 'http://localhost:9191'

    Scenario: Validating the array
      Given path '/normal/webapi/all'
      And header Accept = 'application/json'
      When method get
      Then status 200
      And print response
      And match response.[0].jobDescription == 'To develop andriod application'
      And match response.[0].experience[2] == 'Mobile Iron'
      And match response.[0].project[0].projectName == 'Movie App'
      And match response.[0].project[0].technology[2] == 'Gradle'
      And match response.[0].project[0].technology == '#[3]'

