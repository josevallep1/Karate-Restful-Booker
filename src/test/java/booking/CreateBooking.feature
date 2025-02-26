Feature: Prueba para crear un booking

Yo como usurio
Requiero ingresar la API de reserva
para generar una reservacion

  Background:
    * url url_base
    * def randomData = Java.type('utils.RandomData')
    * def bodyRequestBooking = read ("classpath:BodyBooking.json")
    * set bodyRequestBooking.BodyRequestBooking.firstname = randomData.randomFirstName()
    * set bodyRequestBooking.BodyRequestBooking.lastname = randomData.randomLastName()
    * set bodyRequestBooking.BodyRequestBooking.totalprice = randomData.randomPrice()
    * set bodyRequestBooking.BodyRequestBooking.depositpaid = 'true'
    * set bodyRequestBooking.BodyRequestBooking.bookingdates.checkin = randomData.randomCheckin()
    * set bodyRequestBooking.BodyRequestBooking.bookingdates.checkout = randomData.randomCheCkout()
    * set bodyRequestBooking.BodyRequestBooking.additionalneeds = 'Lunch'
    * header Accept = 'application/json'

  @CreateBooking
  Scenario: Crear un booking de manera exitosa
    Given path 'booking'
    And request bodyRequestBooking.BodyRequestBooking
    When method POST
    Then status 200
    And match response == bodyRequestBooking.BodyResponseCreateBooking
    * print "Se creo el bookingid: " + response.bookingid
