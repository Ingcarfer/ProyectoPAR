<p align="center">
  <h1>ProyectoPAR</h1>
</p>

<p align="center">
  <img src="img/ETITC.png" width="400" />
</p>

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
CREATE DATABASE construc_etitc;
```

### Creacion de tablas y sus relaciones


#### Creación de tablas


```sql

-- Usar la base de datos construc_etitc 
USE construc_etitc;

-- Tabla: clientes
CREATE TABLE clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(20),
    Direccion VARCHAR(50),
    Ciudad VARCHAR(255),
    Correo_Electronico VARCHAR(255),
    Numero_de_Telefono VARCHAR(20)
);

-- Tabla: proyectos
CREATE TABLE proyectos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Cliente_ID INT,
    Fecha_de_Inicio DATE,
    Fecha_de_Finalizacion DATE,
    Estado VARCHAR(20),
    FOREIGN KEY (Cliente_ID) REFERENCES clientes(ID)
);

-- Tabla: actividad
CREATE TABLE actividad (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Proyectos_ID INT,
    Descripcion VARCHAR(255),
    Unidad_de_Medida VARCHAR(50),
    Cantidad DECIMAL(10,2),
    Valor_Unitario DECIMAL(10,2),
    Valor_Total DECIMAL(10,2),
    Prioridad VARCHAR(10),
    Dias_de_Ejecucion INT,
    Estado VARCHAR(15),
    FOREIGN KEY (Proyectos_ID) REFERENCES proyectos(ID)
    
);

-- Tabla: contratistas
CREATE TABLE contratistas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nit VARCHAR(20),
    Nombre_de_la_Empresa VARCHAR(255),
    Direccion VARCHAR(255),
    Correo_Electronico VARCHAR(255),
    Actividad_ID INT,
    FOREIGN KEY (Actividad_ID) REFERENCES actividad(ID)
);

-- Tabla: proveedores
CREATE TABLE proveedores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nit VARCHAR(20),
    Nombre_de_la_Empresa VARCHAR(255),
    Direccion VARCHAR(255),
    Correo_Electronico VARCHAR(255),
    Actividad_ID INT,
    FOREIGN KEY (Actividad_ID) REFERENCES actividad(ID)
);

-- Tabla: empleados
CREATE TABLE empleados (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Documento VARCHAR(50),
    Tipo_de_documento VARCHAR(50),
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Cargo VARCHAR(50),
    Correo_Electronico VARCHAR(255),
    Telefono VARCHAR(20)
);

-- Tabla: tareas
CREATE TABLE tareas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
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
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Proveedor_ID INT,
    Precio DECIMAL(10,2),
    FOREIGN KEY (Proveedor_ID) REFERENCES proveedores(ID)
);

-- Tabla: ordenes_de_compra
CREATE TABLE ordenes_de_compra (
    ID INT AUTO_INCREMENT PRIMARY KEY,
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
    ID INT AUTO_INCREMENT PRIMARY KEY,
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
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Factura_ID INT,
    Monto DECIMAL(10,2),
    Fecha DATE,
    Metodo VARCHAR(50),
    FOREIGN KEY (Factura_ID) REFERENCES facturas(ID)
);

-- Tabla intermedia: proyecto_contratista
CREATE TABLE proyecto_contratista (
    Proyecto_ID INT,
    Contratista_ID INT,
    FOREIGN KEY (Proyecto_ID) REFERENCES proyectos(ID),
    FOREIGN KEY (Contratista_ID) REFERENCES contratistas(ID),
    PRIMARY KEY (Proyecto_ID, Contratista_ID)
);

```
#### SQL NORMZALIZACIÓN DE LA TABLA ACTIVIDAD
```sql
-- Usar la base de datos construc_etitc
USE construc_etitc;

-- Normalización de la tabla actividad: eliminar las columnas Prioridad y Estado
ALTER TABLE actividad
DROP COLUMN Prioridad,
DROP COLUMN Estado;

-- Creación de la tabla prioridad
CREATE TABLE prioridad (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    prioridad VARCHAR(10),
    Rango_de_Ejecucion VARCHAR(50)
);

-- Creación de la tabla estado
CREATE TABLE estado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(15)
);

-- Modificación de la tabla actividad para añadir las claves foráneas Prioridad_ID y Estado_ID
ALTER TABLE actividad
ADD COLUMN Prioridad_ID INT,
ADD COLUMN Estado_ID INT,
ADD CONSTRAINT fk_prioridad
FOREIGN KEY (Prioridad_ID) REFERENCES prioridad(ID),
ADD CONSTRAINT fk_estado
FOREIGN KEY (Estado_ID) REFERENCES estado(ID);

```

#### SQL NORMZALIZACIÓN DE LA TABLA EMPLEADOS
```sql
-- Usar la base de datos construc_etitc
USE construc_etitc;

-- Normalización de la tabla empleados: eliminar la columna cargo
ALTER TABLE empleados
DROP COLUMN Cargo;

-- Crear la tabla cargos
CREATE TABLE cargos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Cargo VARCHAR(50) NOT NULL,
    Salario INT NOT NULL
);

-- Modificación de la tabla empleados para añadir la clave foránea Cargos_ID 
ALTER TABLE empleados
ADD COLUMN Cargos_ID INT,
ADD CONSTRAINT fk_cargos
FOREIGN KEY (Cargos_ID) REFERENCES cargos(ID);
```
### Inserción o incorporacion de Datos
#### Tabla cargos.
```sql

-- Usar la base de datos construc_etitc 
USE construc_etitc;
-- Insertar los datos en la tabla Cargos
INSERT INTO cargos (Cargo, Salario) VALUES
('gerente', 12000000),
('director de obra', 8000000),
('residente de obra', 4000000),
('residente administrativo', 4000000),
('almacenista', 3200000),
('residente sst', 4000000),
('control de calidad', 3500000),
('maestro de obra', 3000000),
('oficial de obra', 2000000),
('ayudante de obra', 1500000);

```
#### Tabla Prioridad
```sql
-- Usar la base de datos construc_etitc 
USE construc_etitc;
-- Insertar los datos en la tabla prioridad
INSERT INTO prioridad (Prioridad, Rango_de_Ejecucion) VALUES
('ALTA', '0 a 30 dias'),
('MEDIANA', '31 a 90 dias'),
('BAJA', 'Mas de 90 dias');
```
#### Tabla Estado
```sql
-- Usar la base de datos construc_etitc 
USE construc_etitc;
-- Insertar los datos en la tabla estado
INSERT INTO estado (Estado) VALUES
('Por empezar'),
('En proceso'),
('Finalizado');
```
### Normalizacion

Para la realización de la normalización, se descargo la información en un archivo CSV y posteriormente se procedio a realizar el proceso de normalización en un archivo de excel. Luego por medio de comandos SQL se prodecio a modificar los atributos de las  primeras tablas, asi como tambien se crearon las nuevas tablas y se subieron sus respectivos datos.

#### Tabla Actividad

##### Tabla Completa

<p style="align:center">
<img src="img/TABLA COMPLETA B.png" width="800" height="400" />
</p>


#### FN1

**1. Se quitan las filas con elementos repetidos**

<p style="align:center">
<img src="img/TABLA COMPLETA FN1 B.png" width="800" height="400" />
</p>


**2. Se dividen en varias tablas**

<p><strong><em>1. ENTIDAD: ACTIVIDAD</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD ACTIVIDAD FN1 B.png" width="800" height="400" />
</p>

<p><strong><em>2. ENTIDAD: PRIORIDAD</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD PRIORIDAD FN1 B.png" width="400" height="120" />
</p>

<p><strong><em>1. ENTIDAD: ESTADO</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD ESTADO FN1 B.png" width="400" height="120" />
</p>


#### FN2

**Se definen llaves y relaciones**

<p><strong><em>1. ENTIDAD: ACTIVIDAD</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD ACTIVIDAD FN2 B.png" width="800" height="400" />
</p>

<p><strong><em>2. ENTIDAD: PRIORIDAD Relaciones de una actividad a una prioridad y una prioridad a muchas una actividad (Uno a muchos)</P></em></strong>

<p style="align:center">
<img src="img/ENTIDAD PRIORIDAD FN2 B.png" width="400" height="120" />
</p>

<p><strong><em>3. ENTIDAD: ESTADO Relaciones de una actividad a una prioridad y una prioridad a muchas una actividad (Uno a muchos)<p><strong><em>

<p style="align:center">
<img src="img/ENTIDAD ESTADO FN2 B.png" width="400" height="120" />
</p>

#### FN3

**ELiminar campos que no depende de la llave y agregar tablas asi como tambiem las llaves necesarias**

<p><strong><em>ENTIDAD: ACTIVIDAD</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD ACTIVIDAD FN3 B.png" width="800" height="400" />
</p>

<p><strong><em>ENTIDAD: PRIORIDAD</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD PRIORIDAD FN3 B.png" width="400" height="120" />
</p>

<p><strong><em>ENTIDAD: ESTADO</em></strong></p>

<p style="align:center">
<img src="img/ENTIDAD ESTADO FN3 B.png" width="400" height="120" />
</p>






### Diagrama ER
En este diagrama de una constructora, se muestra las entidades, sus atributos y las relaciones entre ellas. Objetivo conceptualizar la base de datos relacional.
<p align="center">
  <img src="img/Diagrama ERvr3.jpg" width="600" />
</p>


### consultas


## Conclusión

La implementación de una base de datos en ContrucEtitc.sas es un paso esencial para mejorar la gestión y operación de la empresa. Una base de datos bien diseñada permitirá a la empresa aumentar su eficiencia, optimizar sus recursos y mejorar su competitividad en el mercado de la construcción. Además, este proyecto refleja los conocimientos adquiridos en la asignatura de bases de datos, demostrando su aplicación práctica y su valor en el contexto empresarial.



