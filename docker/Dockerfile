# Use a lightweight Python base image
FROM python:3.11-slim

# Install Apache and mod_wsgi
RUN apt-get update && \
    apt-get install -y apache2 libapache2-mod-wsgi-py3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ARG DEBUG
ENV DEBUG=${DEBUG}

# Create and activate a virtual environment
RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Create app directory
WORKDIR /alvin-client

# Copy project files
COPY . /alvin-client

# Install dependencies inside virtualenv
RUN /venv/bin/pip install --upgrade pip && \
    /venv/bin/pip install -r requirements.txt

# Collect static files inside virtualenv
RUN /venv/bin/python manage.py collectstatic --noinput

# Copy Apache config
COPY apache/django.conf /etc/apache2/sites-available/000-default.conf

# Enable mod_wsgi
RUN a2enmod wsgi

# Expose HTTP port
EXPOSE 80

# Run Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
