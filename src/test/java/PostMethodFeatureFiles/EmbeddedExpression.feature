Feature: To create and check the values using Embedded Expression
  Background: Setting the base url
    Given url 'http://localhost:9191'

  Scenario: To create the job entry in JSON Format
    Given path 'normal/webapi/add'
    * def getJobId = function() { return Math.floor((100) * Math.random())}
    And request { "jobId": '#(getJobId())',"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response