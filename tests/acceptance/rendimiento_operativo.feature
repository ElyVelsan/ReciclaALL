# language: es
Característica: Rendimiento operativo del sistema
  Como personal de segregación
  Quiero que el sistema mantenga altos estándares de velocidad
  Para evitar cuellos de botella en la planta.
 
  @US08
  Esquema del escenario: Procesamiento de imagen dentro del tiempo establecido
    Dado que la cámara captura el fotograma de un residuo sobre la faja
    Y la imagen ingresa al motor de análisis de visión
    Cuando el algoritmo ejecuta la clasificación y emite el resultado al controlador en <tiempo> milisegundos
    Entonces el tiempo transcurrido desde la captura hasta el resultado es menor a 250 milisegundos
 
    Ejemplos:
      | tiempo |
      | 180    |
      | 220    |
      | 249    |
 
  @US08
  Escenario: Registro de log ante latencia alta de procesamiento
    Dado que el módulo de visión recibe una imagen con alta densidad de objetos
    Y el procesador experimenta una carga de trabajo elevada
    Cuando la inferencia del residuo excede los 250 milisegundos
    Y se detecta la demora
    Entonces el sistema registra un evento de alta latencia en el log técnico sin detener la faja
 
  @US09
  Escenario: Reconexión automática ante una caída de red
    Dado que el servicio de comunicación se encuentra operativo
    Cuando ocurre una caída de red y posteriormente se restablece la conexión
    Entonces el servicio de comunicación se reconecta automáticamente para mantener la continuidad operativa


