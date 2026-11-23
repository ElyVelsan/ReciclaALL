# language: es
Característica: Usabilidad y seguridad del sistema
 
  @US11
  Escenario: Navegación directa a funciones principales en dos toques
    Dado que el operador interactúa con la pantalla táctil de la estación
    Y la interfaz muestra la pantalla inicial
    Cuando el operador selecciona la categoría deseada
    Y presiona la opción final
    Entonces el sistema despliega la pantalla solicitada habiendo registrado un máximo de dos toques
 
  @US11
  Escenario: Confirmación táctil con botones optimizados para guantes
    Dado que el operador lleva puestos guantes de protección industrial
    Y requiere confirmar una orden en la interfaz
    Cuando el usuario toca la superficie de un botón principal
    Y el panel registra el contacto
    Entonces la interfaz resalta el botón con un borde brillante
 
  @US12
  Escenario: Autenticación exitosa de usuario autorizado
    Dado que un usuario con rol de supervisor de SSOMA o jefe de planta ingresa a la pantalla de inicio de sesión
    Y el sistema exige credenciales de acceso
    Cuando el usuario ingresa sus credenciales válidas
    Y el módulo confirma el rol asignado
    Entonces el sistema concede el acceso desplegando el Dashboard SSOMA
 
  @US12
  Escenario: Bloqueo de acceso a cuentas no autorizadas
    Dado que un usuario intenta acceder a la dirección web del Dashboard SSOMA
    Y su cuenta no posee privilegios de supervisión
    Cuando ingresa sus credenciales en el formulario
    Y el sistema verifica la tabla de permisos
    Entonces el sistema deniega la entrada mostrando una alerta de permisos insuficientes

