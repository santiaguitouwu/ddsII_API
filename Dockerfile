# Usa una imagen oficial de Python como base
FROM python:3.11

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos a la imagen
COPY requirements.txt /app/

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del proyecto al contenedor
COPY . /app/

# Expone el puerto en el que corre la aplicación Django (8000)
EXPOSE 8000

# Comando para ejecutar las migraciones y luego levantar el servidor
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
