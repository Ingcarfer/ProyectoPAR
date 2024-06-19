from faker import Faker
import mysql.connector

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

# Lista de actividades (puedes agregar más según tus necesidades)
ACTIVIDADES = ['Construcción', 'Suministros', 'Servicios', 'Consultoría', 'Transporte']

# Dominio ficticio para los correos electrónicos
EMAIL_DOMAIN = 'empresa.com'

# Función para generar datos de proveedores 
def generar_datos_proveedores(num_proveedores=50):
    try:
        for _ in range(num_proveedores):
            nit = fake.numerify(text='##############')  # Generar NIT ficticio
            nombre_empresa = fake.company()  # Generar nombre de la empresa ficticia
            direccion = fake.address()  # Generar dirección ficticia
            correo_electronico = f"{nombre_empresa.replace(' ', '').lower()}@{EMAIL_DOMAIN}"  # Generar correo electrónico de la empresa ficticio
            actividad_id = fake.random_element(elements=(1, 2, 3, 4, 5))  # ID de actividad aleatorio
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO proveedores (Nit, Nombre_de_la_Empresa, Direccion, Correo_Electronico, Actividad_ID) VALUES (%s, %s, %s, %s, %s);"
            val = (nit, nombre_empresa, direccion, correo_electronico, actividad_id)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de proveedores generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Generar datos de proveedores
generar_datos_proveedores()

# Cerrar conexión y cursor
cursor.close()
db.close()
