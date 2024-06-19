from faker import Faker
import random
import mysql.connector

# Lista de actividades posibles (debe coincidir con los IDs de actividades existentes en la base de datos)
ACTIVIDADES_ID = [1, 2, 3, 4, 5]  # IDs de actividades que deben coincidir con los existentes en la tabla de Actividades

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

# Función para generar número de NIT aleatorio
def generate_random_nit():
    return fake.unique.random_number(digits=10)  # Generar un número de 10 dígitos para simular un NIT

# Función para generar dirección ficticia en Colombia (solo capitales)
def generate_address():
    return fake.address()

# Función para generar correo electrónico basado en el nombre de la empresa
def generate_email(nombre_empresa):
    company_name_no_spaces = nombre_empresa.replace(' ', '').lower()
    domain = fake.free_email_domain()
    return f"{company_name_no_spaces}@{domain}"

# Función para generar datos de contratistas
def generar_datos_contratistas(num_contratistas=100):
    try:
        for _ in range(num_contratistas):
            nit = generate_random_nit()  # Generar un NIT aleatorio
            nombre_empresa = fake.company()  # Generar nombre de empresa ficticia
            direccion = generate_address()  # Generar dirección ficticia
            correo = generate_email(nombre_empresa)  # Generar correo electrónico basado en el nombre de la empresa
            actividad_id = random.choice(ACTIVIDADES_ID)  # ID de actividad aleatorio de la lista predefinida
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO contratistas (Nit, Nombre_de_la_Empresa, Direccion, Correo_Electronico, Actividad_ID) VALUES (%s, %s, %s, %s, %s);"
            val = (nit, nombre_empresa, direccion, correo, actividad_id)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de contratistas generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Generar datos de contratistas
generar_datos_contratistas()

# Cerrar conexión y cursor
cursor.close()
db.close()
