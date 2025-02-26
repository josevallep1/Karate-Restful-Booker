Feature: Prueba para eliminar un booking

Yo como usurio
Requiero ingresar la API de reserva
para eliminar una reservacion

  Background:
    * url url_base
    * def crear_token = call read('classpath:booking/CreateToken.feature@CreateToken')
    * def crear_booking = call read("classpath:booking/CreateBooking.feature@CreateBooking")

  Scenario: Eliminar booking de manera exitosa
    * def bookingId = crear_booking.response.bookingid
    Given path 'booking/' + bookingId
    And header Cookie = "token=" + crear_token.response.token
    And header Accept = 'application/json'
    When method DELETE
    Then status 201
    And match response reposnse == "Created"
