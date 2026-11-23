# language: es
Característica: Monitoreo analítico SSOMA
  Como supervisor de SSOMA o jefe de planta
  Quiero disponer de herramientas analíticas interactivas sobre residuos
  Para evaluar los índices de riesgo en materia de seguridad.
 
  @US06
  Escenario: Visualización de indicadores del turno actual
    Dado que el supervisor de SSOMA o jefe de planta accede al Dashboard SSOMA
    Y existen registros de residuos del turno actual
    Cuando consulta la pantalla principal del Dashboard
    Entonces el sistema muestra los indicadores de residuos correspondientes al turno actual
 
  @US07
  Escenario: Generación de reporte estadístico de peligrosidad
    Dado que el supervisor se encuentra en el módulo de reportes SSOM
    Y la línea ha procesado lotes durante la jornada
    Cuando solicita el reporte consolidado de peligrosidad
    Y se procesa la información de los sensores
    Entonces el sistema muestra tablas con el índice de residuos peligrosos
 
  @US07
  Escenario: Exportación de datos estadísticos
    Dado que el supervisor consulta las estadísticas de residuos peligrosos
    Y el módulo dispone del botón de exportación
    Cuando hace clic en el botón de descarga de datos
    Y confirma el periodo seleccionado
    Entonces el sistema genera un archivo descargable con la información del reporte
