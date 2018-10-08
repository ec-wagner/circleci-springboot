*** Settings ***
Documentation   API test.

Library         REST            url=http://localhost:8080

*** Test Cases ***
Application is online
    [Documentation]  SUT is online

    GET    /
    Output    request
    Output    request headers


    GET Response Body
        [Documentation]  body of response is a
        ...              type of string and
        ...              is equal to 'Hello World'

        GET    /
        Output    response
        Output    response body
        Output    schema response body

        String    response body
        String    response body    Hello World    maxLength=11
        String    response body    'hello world'
