# Trabajo Practico 01 – Seguimiento de Hábitos Saludables
Alumna: Paula Cedones | Comisión: 75960

## 1. Descripción de la temática

La base de datos propuesta está orientada al funcionamiento de una aplicación que permite a los usuarios realizar un seguimiento de hábitos saludables. Estos hábitos pueden incluir el consumo de agua, cantidad de pasos diarios, horas de sueño, actividad física, alimentación, entre otros. La aplicación permite registrar los hábitos definidos por cada usuario, realizar un seguimiento diario, establecer metas y visualizar el progreso a lo largo del tiempo.

## 2. Objetivo

El objetivo de este proyecto es desarrollar una base de datos relacional que permita estructurar y gestionar la información necesaria para el funcionamiento de una aplicación de seguimiento de hábitos saludables. La base de datos deberá contemplar el registro de usuarios, la definición de distintos tipos de hábitos, la configuración de metas personales, el registro diario de actividades y el análisis del progreso. Esta estructura permitirá generar reportes que brinden información útil tanto para el usuario como para los responsables del desarrollo y mejora de la aplicación.

## 3. Situación problemática

En la actualidad, muchas personas buscan mejorar su calidad de vida incorporando hábitos saludables. Sin embargo, llevar un registro manual de estas actividades puede resultar poco práctico y propenso a errores. Además, la falta de seguimiento constante y de herramientas de visualización dificulta la percepción del progreso, lo cual puede disminuir la motivación. La ausencia de una estructura clara para almacenar y organizar estos datos impide obtener estadísticas útiles que podrían facilitar la toma de decisiones personales. Por lo tanto, se identifica la necesidad de una base de datos que respalde el funcionamiento de una aplicación orientada a este fin, permitiendo registrar, consultar y analizar información de manera eficiente y confiable.

## 4. Modelo de negocio

El modelo de negocio está basado en una aplicación móvil que ofrece servicios de seguimiento y gestión de hábitos saludables. Está dirigida a personas interesadas en mejorar su bienestar físico y mental mediante el establecimiento de rutinas personalizadas. La aplicación ofrece una versión gratuita con funcionalidades básicas y una versión premium con funcionalidades avanzadas, como reportes detallados, recomendaciones personalizadas, integración con dispositivos inteligentes (smartwatches, bandas de actividad), y visualización avanzada de estadísticas.

Desde el punto de vista de la organización, la empresa desarrolladora se encarga del mantenimiento de la infraestructura tecnológica, el análisis de datos para mejorar la experiencia de usuario, y la incorporación de nuevas funcionalidades basadas en el comportamiento y preferencias detectadas. El modelo puede incluir alianzas con profesionales de la salud, nutricionistas y entrenadores, quienes podrían utilizar la plataforma como herramienta de seguimiento de sus pacientes o clientes.

## 5. Diagrama Entidad-Relación (E-R)

A continuación, se describe la estructura base de la base de datos en términos de sus entidades y relaciones:

### Entidades:

1. **Usuario**
   - `id_usuario` (PK)
   - `nombre`
   - `email`
   - `fecha_registro`

2. **Habito**
   - `id_habito` (PK)
   - `nombre`
   - `descripcion`
   - `unidad_medida` (Ej: horas, pasos, litros)
   - `es_personalizado` (boolean)

3. **Usuario_Habito**
   - `id_usuario_habito` (PK)
   - `id_usuario` (FK → Usuario)
   - `id_habito` (FK → Habito)
   - `meta_diaria`
   - `fecha_inicio`

4. **Registro**
   - `id_registro` (PK)
   - `id_usuario_habito` (FK → Usuario_Habito)
   - `fecha`
   - `valor_registrado`

### Relaciones:

- Un **usuario** puede tener **muchos hábitos** → Relación 1:N a través de `Usuario_Habito`.
- Un **hábito** puede estar definido por **muchos usuarios** → Relación N:M a través de `Usuario_Habito`.
- Un **usuario_habito** tiene **muchos registros diarios** → Relación 1:N.


