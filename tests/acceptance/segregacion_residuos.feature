# language: es
Característica: Segregación temprana de residuos en línea
  Como personal de segregación
  Quiero que la máquina procese automáticamente los residuos en la faja transportadora
  Para evitar accidentes laborales durante el horario operativo.
 
  @US01
  Escenario: Clasificación de lotes de residuos por colores de riesgo
    Dado que un lote de residuos ingresa a la cámara de escaneo
    Cuando los sensores analizan la composición del lote
    Y el sistema determina el nivel de riesgo
    Entonces la máquina categoriza el lote por el color de riesgo correspondiente
 
  @US02
  Escenario: Alerta inmediata ante material peligroso
    Dado que la máquina se encuentra operando en la línea de segregación
    Cuando el sistema detecta la presencia de material peligroso
    Entonces la máquina emite una alerta inmediata para advertir al personal
 
  @US03
  Escenario: Desvío automático de residuos identificados
    Dado que el residuo avanza por la faja transportadora
    Y el módulo de segregación física permanece activo
    Cuando el sistema identifica la categoría del material procesado
    Y el objeto llega al punto del desviador automático
    Entonces el actuador impulsa el residuo hacia el contenedor correspondiente
 
  @US03
  Escenario: Detención preventiva por bloqueo en la rampa de desvío
    Dado que el actuador realiza el desvío de un residuo
    Y la rampa de salida presenta un bloqueo de material
    Cuando el sensor detecta la presencia continua del objeto por más de 3 segundos
    Y la rampa no se despeja
    Entonces el sistema detiene automáticamente la faja transportadora
 
  @US04
  Escenario: Activación del indicador visual por cambio de categoría
    Dado que el área de segregación mantiene operaciones normales
    Y el panel visual está conectado al controlador central
    Cuando el sistema registra la categoría del residuo escaneado
    Y se actualiza el estado de la línea
    Entonces el panel visual enciende los indicadores lumínicos correspondientes al riesgo detectado
 
  @US04
  Escenario: Notificación visual ante pérdida de comunicación con el panel
    Dado que la unidad central envía datos de estado al panel visual
    Y la conexión física de comunicación se interrumpe
    Cuando el panel detecta la falta de señal de datos
    Y transcurre el tiempo máximo de espera
    Entonces el panel visual parpadea en color ámbar de falla
 
  @US05
  Escenario: Emisión de señal sonora ante materiales peligrosos
    Dado que el operador trabaja en la zona de la faja transportadora
    Cuando el sistema detecta la presencia de materiales peligrosos
    Entonces la máquina emite una señal sonora para advertir al personal
 
  @US05
  Escenario: Silenciamiento temporal de la alarma sonora
    Dado que la alarma sonora se encuentra activa
    Cuando el operador presiona el botón físico de silenciar
    Entonces el sistema silencia el tono auditivo por un periodo máximo de tres minutos
