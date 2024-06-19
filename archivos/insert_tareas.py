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

# Función para generar datos de tareas
def generar_datos_tareas(num_tareas=100):
    try:
        proyectos_ids = obtener_ids_proyectos()  # Función para obtener los IDs de los proyectos disponibles
        empleados_ids = obtener_ids_empleados()  # Función para obtener los IDs de los empleados disponibles
        
        estados = ['Pendiente', 'En Progreso', 'Completada']  # Estados de tarea posibles

        for _ in range(num_tareas):
            proyecto_id = random.choice(proyectos_ids)  # ID de proyecto aleatorio
            descripcion = fake.text(max_nb_chars=200)  # Descripción aleatoria
            responsable_id = random.choice(empleados_ids)  # ID de empleado responsable aleatorio
            empleado_id = random.choice(empleados_ids)  # ID de empleado asignado aleatorio
            fecha_inicio = fake.date_between(start_date='-1y', end_date='today')  # Fecha de inicio aleatoria en el último año
            fecha_fin = fecha_inicio + timedelta(days=random.randint(1, 30))  # Fecha de finalización (entre 1 y 30 días después)
            estado = random.choice(estados)  # Estado aleatorio

            # Crear la sentencia SQL usando parámetros
            sql = "INSERT INTO tareas (Proyecto_ID, Descripcion, Responsable_ID, Empleado_ID, Fecha_de_Inicio, Fecha_de_Finalizacion, Estado) VALUES (%s, %s, %s, %s, %s, %s, %s);"
            val = (proyecto_id, descripcion, responsable_id, empleado_id, fecha_inicio, fecha_fin, estado)
            
            # Ejecutar la sentencia SQL
            cursor.execute(sql, val)

        print("Datos de tareas generados y cargados en la base de datos.")
    
    except mysql.connector.Error as err:
        print(f"Error de MySQL: {err}")
        db.rollback()  # Revertir cambios en caso de error

# Función auxiliar para obtener los IDs de proyectos disponibles
def obtener_ids_proyectos():
    cursor.execute("SELECT ID FROM proyectos;")
    return [row[0] for row in cursor.fetchall()]

# Función auxiliar para obtener los IDs de empleados disponibles
def obtener_ids_empleados():
    cursor.execute("SELECT ID FROM empleados;")
    return [row[0] for row in cursor.fetchall()]

# Generar datos de tareas
generar_datos_tareas()

# Cerrar conexión y cursor
cursor.close()
db.close()
