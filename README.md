# ProyectoPAR

# Base de Datos Para la empresa ConstrucEtitc.sas

## Introducción

El problema que vamos abordar es la implementación de una base de datos para una empresa de construcción como ConstrucEtitc.sas es esencial para gestionar eficientemente los datos relacionados con clientes, contratistas, presupuestos, programación de proyectos y proveedores. Una administración adecuada de estos datos mejorará la organización interna y potenciará tanto la eficiencia operativa como la toma de decisiones estratégicas.

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
### Tablas iniciales :
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


## Distribución de Tareas

- Coordinación del proyecto: Carlos Fernandez
- Diseño, desarrollo e implementación de la base de datos: Oscar Villalobos, Carlos Fernandez y Jhon Ramos.
- Normalización: Jhon Ramos
- Diagrama ER: Oscar Villalobos.
- Consultas: Oscar Villalobos, Carlos Fernandez y Jhon Ramos.

## Desarrollo del proyecto

### Creacion de la base de datos
```sql
CREATE DATABASE ContrucEtitc;
```

### Creacion de tablas y sus relaciones
```sql
-- Tabla: clientes
CREATE TABLE clientes (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(20),
    Direccion VARCHAR(50),
    Ciudad VARCHAR(255),
    Condado VARCHAR(20),
    Codigo_Postal VARCHAR(20),
    Pais VARCHAR(20),
    Numero_de_Telefono VARCHAR(20)
);

-- Tabla: contratistas
CREATE TABLE contratistas (
    ID INT PRIMARY KEY,
    Nombre_de_la_Empresa VARCHAR(255),
    Direccion VARCHAR(255),
    Correo_Electronico VARCHAR(255),
    Actividad_ID INT,
    FOREIGN KEY (Actividad_ID) REFERENCES actividad(ID)
);

-- Tabla: proveedores
CREATE TABLE proveedores (
    ID INT PRIMARY KEY,
    Nombre_de_la_Empresa VARCHAR(255),
    Direccion VARCHAR(255),
    Correo_Electronico VARCHAR(255),
    Actividad_ID INT,
    FOREIGN KEY (Actividad_ID) REFERENCES actividad(ID)
);

-- Tabla: empleados
CREATE TABLE empleados (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Cargo VARCHAR(50),
    Correo_Electronico VARCHAR(255),
    Telefono VARCHAR(20)
);

-- Tabla: proyectos
CREATE TABLE proyectos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Cliente_ID INT,
    Fecha_de_Inicio DATE,
    Fecha_de_Finalizacion DATE,
    Estado VARCHAR(20),
    FOREIGN KEY (Cliente_ID) REFERENCES clientes(ID)
);

-- Tabla: tareas
CREATE TABLE tareas (
    ID INT PRIMARY KEY,
    Proyecto_ID INT,
    Descripcion TEXT,
    Responsable_ID INT,
    Empleado_ID INT,
    Fecha_de_Inicio DATE,
    Fecha_de_Finalizacion DATE,
    Estado VARCHAR(20),
    FOREIGN KEY (Proyecto_ID) REFERENCES proyectos(ID),
    FOREIGN KEY (Responsable_ID) REFERENCES contratistas(ID),
    FOREIGN KEY (Empleado_ID) REFERENCES empleados(ID)
);

-- Tabla: materiales
CREATE TABLE materiales (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Proveedor_ID INT,
    Precio DECIMAL(10,2),
    FOREIGN KEY (Proveedor_ID) REFERENCES proveedores(ID)
);

-- Tabla: ordenes_de_compra
CREATE TABLE ordenes_de_compra (
    ID INT PRIMARY KEY,
    Proyecto_ID INT,
    Material_ID INT,
    Cantidad DECIMAL(10,2),
    Precio_Total DECIMAL(10,2),
    Fecha DATE,
    FOREIGN KEY (Proyecto_ID) REFERENCES proyectos(ID),
    FOREIGN KEY (Material_ID) REFERENCES materiales(ID)
);

-- Tabla: facturas
CREATE TABLE facturas (
    ID INT PRIMARY KEY,
    Proyecto_ID INT,
    Cliente_ID INT,
    Monto_Total DECIMAL(10,2),
    Fecha DATE,
    Estado VARCHAR(20),
    FOREIGN KEY (Proyecto_ID) REFERENCES proyectos(ID),
    FOREIGN KEY (Cliente_ID) REFERENCES clientes(ID)
);

-- Tabla: pagos
CREATE TABLE pagos (
    ID INT PRIMARY KEY,
    Factura_ID INT,
    Monto DECIMAL(10,2),
    Fecha DATE,
    Metodo VARCHAR(50),
    FOREIGN KEY (Factura_ID) REFERENCES facturas(ID)
);

-- Tabla: actividad
CREATE TABLE actividad (
    ID INT PRIMARY KEY,
    Descripcion VARCHAR(255),
    Unidad_de_Medida VARCHAR(50),
    Cantidad DECIMAL(10,2),
    Valor_Unitario DECIMAL(10,2),
    Valor_Total DECIMAL(10,2)
    Prioridad VARCHAR(10)
    Dias_de_Ejecucion INT,
    Estado VARCHAR(15),
);

-- Tabla intermedia: proyecto_contratista
CREATE TABLE proyecto_contratista (
    Proyecto_ID INT,
    Contratista_ID INT,
    FOREIGN KEY (Proyecto_ID) REFERENCES proyectos(ID),
    FOREIGN KEY (Contratista_ID) REFERENCES contratistas(ID),
    PRIMARY KEY (Proyecto_ID, Contratista_ID)
);

-- Tabla: programacion
CREATE TABLE programacion (
    ID INT PRIMARY KEY,
    Descripcion VARCHAR(50),
    Responsable VARCHAR(50),
    Fecha_de_Inicio DATE,
    Fecha_de_Finalizacion DATE,
    Estado VARCHAR(20)
);

```
### Inserción o incorporacion de Datos

### Normalizacion de la tabla actividad

### Diagrama ER

### consultas


## Conclusión

La implementación de una base de datos en ContrucEtitc.sas es un paso esencial para mejorar la gestión y operación de la empresa. Una base de datos bien diseñada permitirá a la empresa aumentar su eficiencia, optimizar sus recursos y mejorar su competitividad en el mercado de la construcción. Además, este proyecto refleja los conocimientos adquiridos en la asignatura de bases de datos, demostrando su aplicación práctica y su valor en el contexto empresarial.



