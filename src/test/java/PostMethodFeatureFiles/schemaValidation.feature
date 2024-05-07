Feature: Validate the JSON Schema
  To validate the JSON schema for POST /normal/webapi/add

  Background: To set the base url
   Given url 'http://localhost:9191'

  Scenario: To create the job entry using external file
    Given path 'normal/webapi/add'
    * def body = read("../Payloads/PostCreateJob.json")
    And request body
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    And method post
    And status 201
    And match response ==
    """
    {
      "jobId": '#number',
      "jobTitle": '#string',
      "jobDescription": '#string',
      "experience": '#[] #string',
      "project": '#[] #object'
    }
    """
