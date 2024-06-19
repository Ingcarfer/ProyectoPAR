from faker import Faker
import random
import mysql.connector

# Lista de capitales de Colombia
CAPITALES = [
    'Bogotá', 'Medellín', 'Cali', 'Barranquilla', 'Cartagena de Indias',
    'Cúcuta', 'Bucaramanga', 'Pereira', 'Santa Marta', 'Villavicencio',
    'Manizales', 'Pasto', 'Neiva', 'Tunja', 'Montería', 'Popayán',
    'Valledupar', 'Quibdó', 'Arauca', 'Yopal', 'Inírida', 'San José del Guaviare',
    'Mitú', 'Puerto Carreño', 'Riohacha', 'Sincelejo', 'Leticia', 'San Andrés'
]

# Lista de prefijos de operadores
OPERATORS = [
    '300', '301', '302', '303', '304', '305', '310', '311', '312', 
    '313', '314', '315', '316', '317', '318', '319', '320', '321', 
    '322', '323', '324', '350', '351'
]

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

# Función para generar número de teléfono aleatorio con prefijo de operador
def generate_random_telephone():
    prefix = random.choice(OPERATORS)
    number = str(random.randint(1000000, 9999999)).zfill(7)  # Rellenar con ceros a la izquierda si es necesario
    return f"{prefix}{number}"

# Función para generar dirección ficticia en Colombia (solo capitales)
def generate_address():
    ciudad = random.choice(CAPITALES)
    street = fake.street_address()
    return f"{street}, {ciudad}"

# Función para generar correo electrónico basado en el nombre de la empresa
def generate_email(company_name):
    company_name_no_spaces = company_name.replace(' ', '').lower()
    domain = fake.free_email_domain()
    return f"{company_name_no_spaces}@{domain}"

# Función para generar datos de clientes 
def generar_datos_clientes(num_clientes=100):
    try:
        for _ in range(num_clientes):
            nombre = fake.company()  # Generar nombres de empresas ficticias
            direccion = generate_address()  # Utilizar la función para generar direcciones
            ciudad = random.choice(CAPITALES)  # Escoger una ciudad aleatoria
            correo = generate_email(nombre)  # Generar correo electrónico basado en el nombre de la empresa
            telefono = generate_random_telephone()  # Utilizar la función para generar teléfonos
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO clientes (Nombre, Direccion, Ciudad, Correo_Electronico, Numero_de_Telefono) VALUES (%s, %s, %s, %s, %s);"
            val = (nombre, direccion, ciudad, correo, telefono)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de clientes generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error


# Generar datos de clientes
generar_datos_clientes()

# Cerrar conexión y cursor
cursor.close()
db.close()
