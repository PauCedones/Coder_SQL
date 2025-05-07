# Trabajo Practico 2
Alumna: Paula Cedones
Comision: 75960

---

## Índice

1. [Vistas](#vistas)
2. [Funciones](#funciones)
3. [Stored Procedures](#stored-procedures)
4. [Triggers](#triggers)

---

## Vistas

🔗 Archivo SQL: [vistas.sql](./TP_02/vistas.sql)

### 1. vista_progreso_diario

**Descripción:**  
Esta vista muestra el progreso diario de cada usuario en relación con los hábitos que está siguiendo, indicando la cantidad registrada, la meta diaria establecida y la diferencia entre ambas.

**Objetivo:**  
Permitir un seguimiento detallado de cómo se desempeña cada usuario día a día con respecto a sus metas. Es útil para monitorear el cumplimiento de los hábitos y detectar patrones de constancia o desvío.

**Tablas involucradas:**
- `Usuario`
- `Usuario_Habito`
- `Habito`
- `Registro`

**Campos:**
- `nombre_usuario`
- `nombre_habito`
- `fecha`
- `valor_registrado`
- `meta_diaria`
- `diferencia_meta` (valor_registrado - meta_diaria)

### 2. vista_resumen_usuario

**Descripción:**  
Vista que presenta un resumen general de los usuarios y los hábitos que tienen asociados, junto con sus metas diarias.

**Objetivo:**  
Brindar una visión consolidada de qué hábitos sigue cada usuario y cuál es su objetivo diario para cada uno, sin necesidad de consultar múltiples tablas.

**Tablas involucradas:**
- `Usuario`
- `Usuario_Habito`
- `Habito`

**Campos:**
- `nombre_usuario`
- `email`
- `nombre_habito`
- `meta_diaria`
- `fecha_inicio`

### 3. vista_registros_recientes

**Descripción:**  
Esta vista muestra los últimos 7 registros de cada usuario-hábito, ordenados cronológicamente.

**Objetivo:**  
Ofrecer una herramienta rápida para analizar la evolución más reciente del usuario sobre cada hábito registrado. Ideal para tableros de control o alertas personalizadas.

**Tablas involucradas:**
- `Registro`
- `Usuario_Habito`
- `Usuario`
- `Habito`

**Campos:**
- `nombre_usuario`
- `nombre_habito`
- `fecha`
- `valor_registrado`

## Funciones

🔗 Archivo SQL: [funciones.sql](./TP_02/funciones.sql)

### 1. calcular_porcentaje_cumplimiento

- **Descripción**: Calcula el porcentaje de cumplimiento de la meta diaria de un usuario respecto a un hábito determinado en una fecha específica.
- **Objetivo**: Brindar una métrica concreta del desempeño diario del usuario.
- **Tablas involucradas**:
  - `Registro`
  - `Usuario_Habito`

### 2. obtener_promedio_habito_mensual

- **Descripción**: Devuelve el promedio de valores registrados por un usuario para un hábito específico durante un mes y año indicados.
- **Objetivo**: Evaluar el comportamiento y evolución mensual del hábito.
- **Tablas involucradas**:
  - `Registro`


### 3. dias_con_cumplimiento_total

- **Descripción**: Calcula la cantidad de días de un mes en los que el usuario cumplió o superó su meta diaria para un hábito específico.
- **Objetivo**: Medir la constancia del usuario a lo largo del mes.
- **Tablas involucradas**:
  - `Registro`
  - `Usuario_Habito`

---

## Stored Procedures

🔗 Archivo SQL: [stored_procedures.sql](./TP_02/stored_procedures.sql)

### 1. insertar_usuario_con_habito

**Descripción:**  
Inserta un nuevo registro de un valor diario para un hábito asociado a un usuario.

**Objetivo:**  
Permitir al usuario registrar fácilmente su progreso diario respecto a un hábito determinado.

**Tablas involucradas:**  
- `Registro`

**Parámetros:**  
- `p_id_usuario_habito` (INT): Relación del usuario con el hábito.  
- `p_fecha` (DATE): Fecha del registro.  
- `p_valor_registrado` (DECIMAL): Valor que se desea registrar.

### 2. registrar_valor_diario
**Descripción:**  
Actualiza la meta diaria establecida por un usuario para un hábito específico.

**Objetivo:**  
Dar flexibilidad al usuario para modificar sus objetivos a medida que avanza o cambia su rutina.

**Tablas involucradas:**  
- `Usuario_Habito`

**Parámetros:**  
- `p_id_usuario_habito` (INT): ID del hábito asignado al usuario.  
- `p_nueva_meta` (DECIMAL): Nueva meta diaria.

### 3. eliminar_usuario_y_habitos
**Descripción:**  
Elimina un usuario del sistema junto con todos sus hábitos y registros, en cascada.

**Objetivo:**  
Mantener la base de datos limpia al eliminar un usuario que ya no utilizará el sistema.

**Tablas involucradas (indirectamente, por restricciones ON DELETE CASCADE):**  
- `Usuario`  
- `Usuario_Habito`  
- `Registro`

**Parámetros:**  
- `p_id_usuario` (INT): ID del usuario a eliminar.

---

## Triggers

🔗 Archivo SQL: [triggers.sql](./TP_02/triggers.sql)

### 1. trg_insert_registro_validacion
**Descripción:**  
Previene el ingreso de valores negativos o cero en el registro diario de un hábito.

**Objetivo:**  
Garantizar integridad en los datos ingresados por el usuario, asegurando que el valor registrado tenga sentido.

**Tabla afectada:**  
- `Registro`

**Momento de ejecución:**  
Antes de insertar un nuevo registro (`BEFORE INSERT`).

### 2. trg_actualizar_fecha_registro
**Descripción:**  
Evita que se registren fechas futuras al momento de ingresar un nuevo registro de hábito.

**Objetivo:**  
Asegurar que todos los registros reflejen datos reales y actuales, impidiendo errores o manipulaciones.

**Tabla afectada:**  
- `Registro`

**Momento de ejecución:**  
Antes de insertar un nuevo registro (`BEFORE INSERT`).

### 3. trg_log_eliminacion_usuario
**Descripción:**  
Antes de eliminar un usuario, guarda su información en una tabla de log para fines de auditoría.

**Objetivo:**  
Mantener un historial de usuarios eliminados que pueda ser consultado posteriormente si es necesario.

**Tablas involucradas:**  
- `Usuario` (origen de la eliminación)  
- `Log_Eliminacion_Usuario` (tabla auxiliar de log creada por el sistema)

**Momento de ejecución:**  
Antes de eliminar un usuario (`BEFORE DELETE`).

---
