#!/bin/sh
set -e

echo "Waiting for database to be ready..."
until nc -z db 3306; do
  sleep 2
done

echo "Database is ready. Running Flyway migrations..."
flyway \
  -url=jdbc:mysql://db:3306/${MYSQL_DATABASE} \
  -user=${MYSQL_USER} \
  -password=${MYSQL_PASSWORD} \
  migrate

echo "Flyway migration completed."
