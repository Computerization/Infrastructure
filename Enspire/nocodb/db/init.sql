\set pguser `echo "$POSTGRES_USER"`

SELECT 'CREATE DATABASE nocodb'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'nocodb')\gexec
alter database nocodb owner to :pguser;
