\set pguser `echo "$POSTGRES_USER"`

create schema if not exists heyform;
alter schema heyform owner to :pguser;
