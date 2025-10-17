# 1. Utiliser une image Python
FROM python:3.12-slim

# 2. Définir le dossier de travail
WORKDIR /app

# 3. Copier requirements.txt et installer les dépendances
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 4. Copier le reste du projet
COPY . .

# 5. Exposer le port de l'application
EXPOSE 8000

# 6. Commande pour lancer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
