from faker import Faker
import random
import mysql.connector
from datetime import datetime, timedelta

# Configurar Faker para español
fake = Faker('es_ES')

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

# Función para obtener IDs existentes de proyectos
def obtener_ids_proyectos():
    cursor.execute("SELECT ID FROM proyectos;")
    ids_proyectos = [row[0] for row in cursor.fetchall()]
    return ids_proyectos

# Función para generar datos de facturas
def generar_datos_facturas(num_facturas=100):
    ids_proyectos = obtener_ids_proyectos()
    
    try:
        for _ in range(num_facturas):
            proyecto_id = random.choice(ids_proyectos)  # Elegir un ID de proyecto existente aleatoriamente
            cliente_id = random.randint(1, 100)  # ID de cliente aleatorio (asumiendo 100 clientes)
            monto_total = round(random.uniform(1000, 100000), 2)  # Monto total aleatorio entre 1000 y 100000
            fecha = fake.date_between(start_date='-2y', end_date='today')  # Fecha aleatoria en los últimos 2 años
            
            estados = ['Pagada', 'Pendiente', 'Anulada']
            estado = random.choice(estados)  # Estado aleatorio de la factura
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO facturas (Proyecto_ID, Cliente_ID, Monto_Total, Fecha, Estado) VALUES (%s, %s, %s, %s, %s);"
            val = (proyecto_id, cliente_id, monto_total, fecha, estado)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de facturas generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Generar datos de facturas
generar_datos_facturas()

# Cerrar conexión y cursor
cursor.close()
db.close()
