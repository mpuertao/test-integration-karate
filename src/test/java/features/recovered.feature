Feature: Get All Recovered with consult to the API Recovered

  Background:
    * url 'http://localhost:9010'
  Scenario: Validate method get all recovered
    Given path '/recovered'
    When method GET
    Then status 200
    And match each $.[*].name == '#notnull'

  Scenario: Validate Get Recovered By Id
    Given path '/recovered/1'
    When method GET
    Then status 200
    And match response == {id: 1, name: 'pepito perez', age: 25}

  Scenario: Validate Get Recovered By Id Not Exist
    Given path '/recovered/1000'
    When method GET
    Then status 400
    And match response == [{title: 'No value present', code: '400', description: 'User no exist in application'}]

  Scenario: Validate the created of Recovered
    Given path '/recovered'
    And request {id: 6, name: 'Isaac Puerta', age: 5}
    When method POST
    Then status 201
    And match response == {id: 6, name: 'Isaac Puerta', age: 5}