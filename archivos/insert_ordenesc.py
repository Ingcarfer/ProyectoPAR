from faker import Faker
import random
import mysql.connector
from datetime import datetime, timedelta

# Configuración de conexión a la base de datos
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

# Conexión a la base de datos
db = mysql.connector.connect(**config)
cursor = db.cursor()

# Configurar Faker para español
fake = Faker('es_ES')

# Función para generar datos de órdenes de compra
def generar_datos_ordenes(num_ordenes=100):
    try:
        proyectos_ids = obtener_ids_proyectos()  # Función que obtiene los IDs de los proyectos disponibles
        materiales_ids = obtener_ids_materiales()  # Función que obtiene los IDs de los materiales disponibles
        
        for _ in range(num_ordenes):
            proyecto_id = random.choice(proyectos_ids)  # ID de proyecto aleatorio
            material_id = random.choice(materiales_ids)  # ID de material aleatorio
            cantidad = round(random.uniform(10, 100), 2)  # Cantidad aleatoria entre 10 y 100
            precio_unitario = round(random.uniform(100, 1000), 2)  # Precio unitario aleatorio entre 100 y 1000
            precio_total = cantidad * precio_unitario  # Precio total calculado
            fecha = fake.date_between(start_date='-1y', end_date='today')  # Fecha aleatoria en el último año

            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO ordenes_de_compra (Proyecto_ID, Material_ID, Cantidad, Precio_Total, Fecha) VALUES (%s, %s, %s, %s, %s);"
            val = (proyecto_id, material_id, cantidad, precio_total, fecha)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de órdenes de compra generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Función auxiliar para obtener los IDs de proyectos disponibles
def obtener_ids_proyectos():
    cursor.execute("SELECT ID FROM proyectos;")
    return [row[0] for row in cursor.fetchall()]

# Función auxiliar para obtener los IDs de materiales disponibles
def obtener_ids_materiales():
    cursor.execute("SELECT ID FROM materiales;")
    return [row[0] for row in cursor.fetchall()]

# Generar datos de órdenes de compra
generar_datos_ordenes()

# Cerrar conexión y cursor
cursor.close()
db.close()
