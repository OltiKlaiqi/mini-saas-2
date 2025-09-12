!/bin/bash

BACKUP_DIR="/opt/mini-saas-2/backups"
mkdir -p $BACKUP_DIR
DATE=$(date +"%Y-%m-%d_%H-%M")
FILENAME="minisaas_backup_$DATE.sql"

# Dump PostgreSQL database
docker exec -t mini-saas-2_db_1 pg_dumpall -U mini > "$BACKUP_DIR/$FILENAME"

# Keep only last 7 backups
ls -1t $BACKUP_DIR | tail -n +8 | xargs -I {} rm -- "$BACKUP_DIR/{}"