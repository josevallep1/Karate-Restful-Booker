# Reto de automatización en Karate Framework
Objetivo
El objetivo de este reto es desarrollar pruebas automatizadas en Karate Framework
para validar el funcionamiento de los servicios expuestos por Restful Booker:
https://restful-booker.herokuapp.com/apidoc/index.html
Desafío
El reto consiste en desarrollar un script de pruebas automatizadas, que haga lo
siguiente:
1. Crear una reserva.
2. Consultar la reserva con el “bookingid” generado.
3. Actualizar la reserva con datos distintos a los iniciales.
4. Eliminar la reserva creada
   
Nota: Para actualizar o eliminar la reserva se requiere de un headers “Cookie: token=abc123” el cual se obtiene del servicio Crear o generar token.
   
# Criterios de evaluación
   * Estructura del proyecto en Karate Framework y manejo de buenas prácticas.
   * Uso de variables para manejar el token de autenticación y el ID de la reserva.
   * Uso de aserciones y marcadores.
   * Reutilización de features.
   * Manejo y lectura de archivos json.
   * Uso de reportes con cucumber.
   * Correcta integración con clases en código java.

# Entrega
   El proyecto de automatización desarrollado debe ser enviado al tutor por medio de
   correo o al chat personal en un archivo .zip con el nombre respectivo, por ejemplo
   “Jesus_Dorado.zip”. Recuerda que "La práctica hace al maestro."