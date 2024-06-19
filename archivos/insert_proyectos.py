from faker import Faker
import random
import mysql.connector
from datetime import datetime, timedelta

# Configuración de Faker para español
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

# Lista de estados posibles para los proyectos
ESTADOS = ['En progreso', 'Completado', 'En espera', 'Cancelado']

# Función para generar fechas aleatorias
def generate_random_dates():
    start_date = fake.date_between(start_date='-2y', end_date='today')
    end_date = start_date + timedelta(days=random.randint(30, 365))
    return start_date, end_date

# Función para obtener IDs de clientes existentes en la tabla `clientes`
def get_cliente_ids():
    cursor.execute("SELECT ID FROM clientes")
    return [row[0] for row in cursor.fetchall()]

# Función para generar datos de proyectos 
def generar_datos_proyectos(num_proyectos=5):
    cliente_ids = get_cliente_ids()
    
    if not cliente_ids:
        print("No hay clientes disponibles en la tabla `clientes`.")
        return

    try:
        for _ in range(num_proyectos):
            nombre = fake.catch_phrase()  # Generar nombres de proyectos
            descripcion = fake.text()  # Generar descripciones de proyectos
            cliente_id = random.choice(cliente_ids)  # Escoger un cliente ID aleatorio
            fecha_inicio, fecha_finalizacion = generate_random_dates()  # Generar fechas aleatorias
            estado = random.choice(ESTADOS)  # Escoger un estado aleatorio
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO proyectos (Nombre, Descripcion, Cliente_ID, Fecha_de_Inicio, Fecha_de_Finalizacion, Estado) VALUES (%s, %s, %s, %s, %s, %s);"
            val = (nombre, descripcion, cliente_id, fecha_inicio, fecha_finalizacion, estado)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de proyectos generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error


# Generar datos de proyectos
generar_datos_proyectos()

# Cerrar conexión y cursor
cursor.close()
db.close()
