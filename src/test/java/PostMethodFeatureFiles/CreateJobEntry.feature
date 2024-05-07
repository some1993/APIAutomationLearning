Feature: To create a new Job entry
  Use POST /normal/webapi/add to create job entry in the application
  Background: To set the base URL
  Given url 'http://localhost:9191'

  Scenario: To create the job entry in JSON Format
  Given path 'normal/webapi/add'
    And request {"jobId":4,"jobTitle":"Software Engg","jobDescription":"To develop andriod application","experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.jobId == 4



  Scenario: To create the job entry in XML Format
    Given path 'normal/webapi/add'
    And request <item><jobId>5</jobId><jobTitle>Software Engineer 2</jobTitle><jobDescription>To develop andriod application</jobDescription><experience><experience>Google</experience><experience>Apple</experience><experience>Mobile Iron</experience></experience><project><project><projectName>Movie App</projectName><technology><technology>Kotlin</technology><technology>SQL Lite</technology><technology>Gradle</technology></technology></project></project></item>
    And headers {Accept: 'application/xml', Content-Type: 'application/xml'}
    When method post
    And status 201
    And print response
    And match response/Job/jobId == "5"

  Scenario: To create the job entry using external file
    Given path 'normal/webapi/add'
    * def body = read("../Payloads/PostCreateJob.json")
    And request body
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    And method post
    Then status 201
    And print response


  Scenario: To create the job entry using external file in xml
    Given path 'normal/webapi/add'
    * def body = read("../Payloads/PostCreateJob.xml")
    And request body
    And headers {Accept: 'application/xml', Content-Type: 'application/xml'}
    And method post
    Then status 201
    And print response
