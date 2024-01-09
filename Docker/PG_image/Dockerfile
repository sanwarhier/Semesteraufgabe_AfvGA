FROM postgis/postgis
#ENV POSTGRES_PASSWORD="myscretpassword"

RUN apt update -y && apt install -y gdal-bin libgdal-dev

#ENV POSTGRES_USER="postgres"
#ENV POSTGRES_DB="postgres"

COPY data/corine_2018_nrw.gpkg /data/corine_2018_nrw.gpkg

RUN echo 'ogr2ogr "PG:dbname=postgres" /data/corine_2018_nrw.gpkg' > /docker-entrypoint-initdb.d/load_data.sh


# ogr2ogr 
#CMD ["/bin/bash"]
# PG:"dbname='databasename' host='addr' port='5432' user='x' password='y'"
# ogr2ogr <dst_datasource_name> <src_datasource_name>
# ogrinfo "PG:dbname=postgres host=localhost port=5432 user=postgres password=myscretpassword" corine_2018_nrw