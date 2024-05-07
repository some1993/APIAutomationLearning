Feature: To create the job description in the test application

  Scenario Outline: To create job description in the test application <method>
    Given print '<url>'
    When print '<path>'
    Then print '<method>'
    And print '<status>'

    Examples:
      | url                   | path                | method | status |
      | http://localhost:9191 | /normal/webapi/all  | get    | 200    |
      | http://localhost:9191 | /normal/webapi/add  | post   | 201    |
      | http://localhost:9191 | //normal/webapi/add | put    | 201    |

    Scenario Outline: Data Driven for the job Description entry
      Given url 'http://localhost:9191'
      And path 'normal/webapi/add'
      And request {"jobId":'#(jobId)',"jobTitle":'#(jobTitle)',"jobDescription":'#(jobDescription)',"experience":["Google","Apple","Mobile Iron"],"project":[{"projectName":"Movie App","technology":["Kotlin","SQL Lite","Gradle"]}]}
      When method post
      Then status 201
      And print response

      Examples:
        | jobId | jobTitle          | jobDescription                 | status |
        | 88    | Data Analyst      | Working on the SQL and MangoDB | 201    |
        | test  | Software Engineer | Working on technical front     | 400    |