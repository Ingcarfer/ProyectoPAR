import mysql.connector
import random

# Configuración de la conexión a la base de datos
config = {
    'host': '127.0.0.1',
    'database': 'construc_etitc',
    'user': 'IngCarfer',
    'password': 'M1002436444',
    'port': 3306,
    'charset': 'utf8mb4',
    'collation': 'utf8mb4_general_ci',
    'autocommit': True,
}

# Datos de las actividades con Proyectos_ID aleatorio del 1 al 5
actividades = [
    (1, 'ACERO REFUERZO SALON COMUNAL', 'kg', 17199, 2.125, 36547875, 121, 1, 1),
    (2, 'MALLA REFUERZO SALON COMUNAL', 'kg', 2329, 2.475, 5764275, 184, 3, 2),
    (3, 'MUROS CONCRETO SUB-ESTACION', 'm2', 22.4, 69.175, 1549520, 136, 1, 3),
    (4, 'CONCRETO ESCALERAS', 'm3', 3, 597.000, 1791000, 75, 3, 2),
    (5, 'CONCRETO COLUMNAS', 'm3', 15, 597.000, 8955000, 215, 2, 2),
    (6, 'CONCRETO CIMENTACION SUB-ESTACION', 'm2', 48, 146.501, 7032048, 60, 2, 3),
    (7, 'CONCRETO VIGAS CUBIERTA', 'm3', 7.5, 420.000, 3150000, 95, 1, 1),
    (8, 'CONCRETO PLACA ALIGERADA ENTREPISO-SALON COMUNAL', 'm2', 460, 146.501, 67390460, 62, 3, 2),
    (9, 'MAMPOSTERIA', 'm2', 511, 43.762, 22362382, 58, 2, 3),
    (10, 'HILADA PARADA', 'ml', 28, 11.500, 322000, 80, 3, 2),
    (11, 'ANTEPECHO', 'ml', 28, 26.500, 742000, 23, 1, 1),
    (12, 'AFINADO INTERIOR PISOS', 'm2', 450, 10.200, 4590000, 192, 3, 2),
    (13, 'PISO EN TABLETA GRES Y GRAVILLA', 'm2', 367, 41.250, 15138750, 57, 2, 2),
    (14, 'AFINADO ESCALERAS', 'un', 18, 13.627, 245286, 268, 2, 3),
    (15, 'PASOS ESCALERAS TABLETA Y GRAVILLA', 'un', 18, 17.850, 321300, 21, 3, 1),
    (16, 'REMATE MUROS Y TECHO', 'm2', 188, 5000, 940000, 223, 2, 3),
    (17, 'REMATE FACHADA', 'm2', 250, 1.041, 260250, 93, 2, 2),
    (18, 'CENEFA EN GRAVILLA', 'ml', 300, 8.943, 2682900, 257, 2, 3),
    (19, 'MEDIA CAÑA EN GRAVILLA', 'ml', 82, 8.733, 716106, 49, 1, 1),
    (20, 'GUARDAESCOBA EN GRAVILLA', 'ml', 170, 8.943, 1520310, 176, 3, 1),
    (21, 'PAÑETE FACHADA', 'm2', 130, 18.625, 2421250, 142, 3, 1),
    (22, 'PINTURA SOBRE PAÑETE FACHADA', 'm2', 130, 9000, 1170000, 52, 3, 2),
    (23, 'AFINADO IMPERMEABILIZADO BAÑOS', 'm2', 33, 18.609, 614097, 216, 2, 2),
    (24, 'ENCHAPE PISO BAÑOS', 'm2', 33, 30.856, 1018248, 108, 3, 3),
    (25, 'PAÑETE MUROS BAÑOS', 'm2', 150, 11.171, 1675650, 338, 2, 1),
    (26, 'ENCHAPE MUROS BAÑO', 'm2', 150, 30000, 4500000, 183, 3, 2),
    (27, 'IMPERMEABILIZACION TERRAZA', 'm2', 89, 30000, 2670000, 231, 1, 2),
    (28, 'PAÑETE BAJO PLACA', 'm2', 188, 18.500, 3478000, 101, 3, 3),
    (29, 'PINTURA PUERTA PRINCIPAL', 'un', 1, 25500, 25500, 351, 2, 1),
    (30, 'PINTURA MARCO EN LAMINA', 'un', 4, 9800, 39200, 102, 3, 2),
    (31, 'PINTURA CARAPLAST', 'm2', 200, 5.258, 1051600, 95, 1, 3),
    (32, 'PINTURA PUERTA BAÑO', 'un', 4, 14912, 59648, 174, 3, 2),
    (33, 'LAVAMANOS', 'un', 6, 90000, 540000, 123, 3, 3),
    (34, 'SANITARIO', 'un', 7, 90000, 630000, 350, 2, 2),
    (35, 'SANITARIO PARA DISCAPACITADOS', 'un', 1, 120000, 120000, 188, 3, 3),
    (36, 'REJILLAS DE PISO', 'un', 8, 1173, 9384, 31, 2, 1),
    (37, 'ESPEJO DE BAÑO', 'un', 4, 13866, 55464, 142, 2, 2),
    (38, 'DIVISIONES DE BAÑO', 'm2', 16, 110000, 1760000, 225, 3, 3),
    (39, 'GRIFERIA LAVAPLATOS', 'un', 4, 22000, 88000, 200, 3, 3),
    (40, 'MESON EN GRANITO PULIDO', 'un', 1, 150000, 150000, 201, 1, 1),
    (41, 'PUERTA MADEFLEX', 'un', 4, 47050, 188200, 225, 3, 2),
    (42, 'MARCO EN LAMINA BAÑO', 'un', 4, 43935, 175740, 286, 3, 3),
    (43, 'PUERTA EN LAMINA', 'un', 6, 390000, 2340000, 315, 2, 1),
    (44, 'CERRADURA BAÑO', 'un', 4, 13400, 53600, 109, 2, 3),
    (45, 'VENTANERIA EN ALUMINIO', 'm2', 61, 120000, 7320000, 293, 3, 2),
    (46, 'SEÑALIZACION', 'gl', 1, 500000, 500000, 221, 3, 3),
    (47, 'LAVADO MUROS INTERIORES', 'm2', 798, 2490, 1987020, 348, 1, 1),
    (48, 'LAVADO MUROS EXTERIORES', 'm2', 260, 4317, 1122420, 60, 3, 3),
    (49, 'IMPERMEABILIZACION MUROS EXETRIORES', 'm2', 260, 2238, 581880, 46, 2, 3),
    (50, 'CUBIERTA TERMOACUSTICA', 'm2', 177, 52991, 9379407, 272, 3, 2),
    (51, 'ENCHAPE LADRILLO', 'ml', 360, 8700, 3132000, 339, 3, 1),
    (52, 'CUCHILLAS REMATE', 'ml', 25, 16600, 415000, 270, 3, 3),
    (53, 'ANCLAJES CON EPOXICO PARA MAMPOSTERIA', 'un', 326, 3500, 1141000, 318, 1, 1),
    (54, 'MURO INSONORO', 'm2', 95, 40000, 3800000, 101, 3, 2),
    (55, 'PAÑETE MURO INSONORO', 'm2', 95, 9000, 855000, 330, 2, 3),
    (56, 'PINTURA MURO INSONORO', 'm2', 95, 6000, 570000, 271, 3, 2),
    (57, 'BARANDA METALICA TERRAZA', 'ml', 45, 65000, 2925000, 184, 1, 1),
    (58, 'BARANDA METALICA ESCALERA', 'ml', 7, 65000, 455000, 252, 2, 2),
    (59, 'PERFILERIA METALICA PARA CUBIERTA', 'gl', 1, 15600000, 15600000, 237, 1, 3),
]

# Función para generar un número aleatorio del 1 al 5
def generar_proyecto_id():
    return random.randint(1, 5)

# Generar los datos con Proyectos_ID aleatorio y preparar para la inserción
datos_para_insertar = []
for actividad in actividades:
    proyecto_id = generar_proyecto_id()
    datos_para_insertar.append(actividad + (proyecto_id,))

# Conectar a la base de datos y realizar la inserción
try:
    conn = mysql.connector.connect(**config)
    cursor = conn.cursor()

    # Script SQL para insertar datos en la tabla actividad
    sql_insert = "INSERT INTO actividad (ID, Descripcion, Unidad_de_Medida, Cantidad, Valor_Unitario, Valor_Total, Dias_de_Ejecucion, Prioridad_ID, Estado_ID, Proyectos_ID) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

    # Insertar los datos en la tabla actividad
    cursor.executemany(sql_insert, datos_para_insertar)
    print(f"Se han insertado {cursor.rowcount} registros.")

except mysql.connector.Error as e:
    print(f"Error al insertar datos: {e}")

finally:
    if 'conn' in locals() and conn.is_connected():
        cursor.close()
        conn.close()
        print("Conexión cerrada.")
