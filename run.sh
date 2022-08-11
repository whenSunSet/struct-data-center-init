cd pyspider
sudo sh run.sh

cd ../ParseServer
sudo sh run.sh

cd ../MetaBase
mkdir data/db/pg_commit_ts
mkdir data/db/pg_dynshmem
mkdir data/db/pg_logical/mappings
mkdir data/db/pg_logical/snapshots
mkdir data/db/pg_replslot
mkdir data/db/pg_serial
mkdir data/db/pg_snapshots
mkdir data/db/pg_stat
mkdir data/db/pg_stat_tmp
mkdir data/db/pg_tblspc
mkdir data/db/pg_twophase
mkdir data/db/pg_wal/archive_status
sudo sh run.sh

cd ../n8n
sudo sh run.sh

cd ../selenium
sudo sh run.sh
