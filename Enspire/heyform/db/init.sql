\set pguser `echo "$POSTGRES_USER"`

create database if not exists heyform;
alter database heyform owner to :pguser;
