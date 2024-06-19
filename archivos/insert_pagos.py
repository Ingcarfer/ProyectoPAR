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

# Función para generar datos de pagos
def generar_datos_pagos(num_pagos=100):
    try:
        facturas_ids = obtener_ids_facturas()  # Función para obtener los IDs de las facturas disponibles
        
        for _ in range(num_pagos):
            factura_id = random.choice(facturas_ids)  # ID de factura aleatorio
            monto = round(random.uniform(1000, 10000), 2)  # Monto aleatorio entre 1000 y 10000
            fecha = fake.date_between(start_date='-1y', end_date='today')  # Fecha aleatoria en el último año
            metodo_pago = random.choice(["Transferencia", "Tarjeta", "Efectivo"])  # Método de pago aleatorio

            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO pagos (Factura_ID, Monto, Fecha, Metodo) VALUES (%s, %s, %s, %s);"
            val = (factura_id, monto, fecha, metodo_pago)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de pagos generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Función auxiliar para obtener los IDs de facturas disponibles
def obtener_ids_facturas():
    cursor.execute("SELECT ID FROM facturas;")
    return [row[0] for row in cursor.fetchall()]

# Generar datos de pagos
generar_datos_pagos()

# Cerrar conexión y cursor
cursor.close()
db.close()
