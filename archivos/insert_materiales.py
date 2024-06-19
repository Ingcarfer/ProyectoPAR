from faker import Faker
import random
import mysql.connector

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

# Función para obtener IDs existentes de proveedores
def obtener_ids_proveedores():
    cursor.execute("SELECT ID FROM proveedores;")
    ids_proveedores = [row[0] for row in cursor.fetchall()]
    return ids_proveedores

# Obtener los IDs existentes de proveedores
ids_proveedores = obtener_ids_proveedores()

# Función para generar datos de materiales
def generar_datos_materiales(num_materiales=100):
    try:
        for _ in range(num_materiales):
            nombre = fake.word()  # Nombre aleatorio del material
            descripcion = fake.text(max_nb_chars=200)  # Descripción aleatoria del material
            proveedor_id = random.choice(ids_proveedores)  # ID de proveedor aleatorio
            precio = round(random.uniform(10, 1000), 2)  # Precio aleatorio entre 10 y 1000
            
            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO materiales (Nombre, Descripcion, Proveedor_ID, Precio) VALUES (%s, %s, %s, %s);"
            val = (nombre, descripcion, proveedor_id, precio)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de materiales generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Generar datos de materiales
generar_datos_materiales()

# Cerrar conexión y cursor
cursor.close()
db.close()
