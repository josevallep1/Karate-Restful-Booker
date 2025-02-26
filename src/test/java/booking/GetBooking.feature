Feature: Prueba para consultar bookings

Yo como usurio
Requiero ingresar la API de reserva
para generar una reservacion
y consultarle luego por si ID

  Background:
    * url url_base
    * def bodyRequestBooking = read ("classpath:BodyBooking.json")
    * header Accept = 'application/json'

  @GetBookingById
  Scenario: Obtener booking por su id de manera exitosa
    * def crear_booking = call read("classpath:booking/CreateBooking.feature@CreateBooking")
    * def bookingId = crear_booking.response.bookingid
    Given path 'booking/' + bookingId
    When method GET
    Then status 200
    And match response == bodyRequestBooking.BodyResponseSchema
    And print 'getResponse: ', response
