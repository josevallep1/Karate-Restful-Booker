Feature: Prueba para consultar un booking

Yo como usurio
Requiero ingresar la API de reserva
para modificar una reservacion

  Background:
    * url url_base
    * def crear_token = call read('classpath:booking/CreateToken.feature@CreateToken')
    * def crear_booking = call read("classpath:booking/CreateBooking.feature@CreateBooking")
    * def bodyRequestUpdateBooking = read ("classpath:BodyBooking.json")

  Scenario: Modificar booking de manera exitosa
    * def bookingId = crear_booking.response.bookingid
    Given path 'booking/' + bookingId
    And header Cookie = "token=" + crear_token.response.token
    And header Accept = 'application/json'
    And request bodyRequestUpdateBooking.BodyRequestUpdateBooking
    When method PUT
    Then status 200
    And match response == bodyRequestUpdateBooking.BodyResponseSchema
    And match response == bodyRequestUpdateBooking.BodyRequestUpdateBooking
