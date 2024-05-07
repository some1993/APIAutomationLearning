Feature: To upload the file
  Background: setting the base path
    Given url 'http://localhost:9191'

    Scenario: To upload the file and test
      Given path 'normal/webapi/upload'
      And multipart file file = { read: '../Payloads/FileToUpload.txt', filename: 'FileToUpload.txt', Content-Type: 'multipart/form-data'}
      When method post
      Then status 200
      And print response