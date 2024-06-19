from faker import Faker
import random
import mysql.connector

# Lista de cargos posibles
CARGOS_ID = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # IDs de cargos que deben coincidir con los existentes en la tabla de Cargos

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

# Función para generar número de teléfono aleatorio
def generate_random_telephone():
    return fake.phone_number()

# Función para generar correo electrónico basado en el nombre del empleado
def generate_email(nombre, apellido):
    # Eliminar espacios y convertir a minúsculas
    nombre_completo = f"{nombre}{apellido}".replace(' ', '').lower()
    domain = fake.free_email_domain()
    return f"{nombre_completo}@{domain}"

# Función para generar datos de empleados
def generar_datos_empleados(num_empleados=100):
    try:
        for _ in range(num_empleados):
            documento = fake.unique.random_number(digits=10)  # Generar un número de documento aleatorio
            tipo_documento = random.choice(['CC', 'TI', 'CE'])  # Tipo de documento aleatorio
            nombre = fake.first_name()  # Nombre aleatorio
            apellido = fake.last_name()  # Apellido aleatorio
            correo = generate_email(nombre, apellido)  # Generar correo electrónico basado en el nombre y apellido
            telefono = generate_random_telephone()  # Teléfono aleatorio
            cargo_id = random.choice(CARGOS_ID)  # ID de cargo aleatorio de la lista predefinida
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO empleados (Documento, Tipo_de_documento, Nombre, Apellido, Correo_Electronico, Telefono, Cargos_ID) VALUES (%s, %s, %s, %s, %s, %s, %s);"
            val = (documento, tipo_documento, nombre, apellido, correo, telefono, cargo_id)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de empleados generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Generar datos de empleados
generar_datos_empleados()

# Cerrar conexión y cursor
cursor.close()
db.close()
