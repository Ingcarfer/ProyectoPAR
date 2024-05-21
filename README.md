# ProyectoPAR

# Base de Datos Para la empresa ContrucEtitc.sas

## Intruducción

La implementación de una base de datos para una empresa de construcción como ContrucEtitc.sas es esencial para gestionar eficientemente los datos relacionados con clientes, contratistas, presupuestos, programación de proyectos y proveedores. Una administración adecuada de estos datos mejorará la organización interna y potenciará tanto la eficiencia operativa como la toma de decisiones estratégicas.

Actualmente, no disponemos de una base de datos previa. En esta fase inicial, nuestro equipo creará y diseñará la base de datos desde cero. En futuras fases, evaluaremos la posibilidad de complementar la base de datos con información disponible en fuentes públicas, como la Cámara de Comercio, para enriquecer y completar la información existente.

## Objetivo General
Diseñar, manipular y administrar la base de datos creada para la empresa ContrucEtitc.sas.

Tienes razón. Aquí está la lista utilizando el formato adecuado para listas no ordenadas:

## Beneficios de la Implementación

- **Eficiencia Operativa:** La centralización de la información permite un acceso rápido y preciso a los datos necesarios, reduciendo tiempos de búsqueda y errores manuales.
- **Mejora en la Toma de Decisiones:** Con datos actualizados y bien organizados, los gerentes pueden tomar decisiones más informadas y estratégicas.
- **Control Financiero:** La gestión de presupuestos y el seguimiento de gastos permiten un control financiero más riguroso y la detección temprana de desviaciones.
- **Cumplimiento de Plazos:** La programación detallada y el seguimiento del progreso aseguran que los proyectos se completen a tiempo, mejorando la satisfacción del cliente.
- **Relaciones Comerciales Sólidas:** La gestión eficiente de proveedores y contratistas fortalece las relaciones comerciales, asegurando la calidad y disponibilidad de recursos.


## Meta data
### Tablas:
clientes:

Atributos:
- ID (int)
- Nombre (varchar(20))
- dirección (varchar(50))
- ciudad (varchar(255))
- condado (varchar(20))
- código_postal (varchar(20))
- país (varchar(20))
- número_de_teléfono (varchar(20))

Clave primaria: ID

contratistas:

Columnas:
- ID (int)
- Nombre_de_la_empresa (varchar(255))
- Direccion (varchar(255))
- Correo_electronico (varchar(255))
- Actividad (varchar(100))

Clave primaria: ID

presupuesto:

Columnas:
- ID (int)
- Descripcion (varchar(255))
- Unidad_de_Medida (varchar(50))
- Actividad (varchar(255))
- Cantidad (decimal(10,2))
- Valor_Unitario (decimal(10,2))
- Valor_Total (decimal(10,2))

Clave primaria: ID

programacion:

Columnas:
- ID (int)
- Descripcion (varchar(50))
- Responsable (varchar(50))
- Fecha_de_inicio (date)
- Fecha_de_finalizacion (date)
- Estado (varchar(20))

Clave primaria: ID

proveedores:

Columnas:
- ID (int)
- Nombre_de_la_empresa (varchar(255))
- Direccion (varchar(255))
- Correo_electronico (varchar(255))
- Actividad (varchar(100))

Clave primaria: ID


## Conclusión

La implementación de una base de datos en ContrucEtitc.sas es un paso esencial para mejorar la gestión y operación de la empresa. Una base de datos bien diseñada permitirá a la empresa aumentar su eficiencia, optimizar sus recursos y mejorar su competitividad en el mercado de la construcción. Además, este proyecto refleja los conocimientos adquiridos en la asignatura de bases de datos, demostrando su aplicación práctica y su valor en el contexto empresarial.


## Distribución de Tareas

- Diagrama ER: Oscar Villalobos.
- Normalización: Jhon Ramos y Carlos Fernandez.
- Consultas: Oscar Villalobos, Carlos Fernandez y Jhon Ramos.
