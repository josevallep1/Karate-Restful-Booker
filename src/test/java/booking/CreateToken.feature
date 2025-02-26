@ignore
Feature:Prueba para crear un token para eliminar y modificar un booking

  Background:
    * url url_base

  @CreateToken
  Scenario: Crear un token de manera exitosa
    * def credentials = read('classpath:BodyCredentials.json')
    Given path 'auth'
    Given header Accept = 'application/json'
    And request credentials.Credentials
    When method POST
    Then status 200
    And match response.token == "#string"
    * print "El Token es: " + response.token
