# GeoServer-URL
GEOSERVER_URL="http://localhost:8081/geoserver"

# GeoServer-Benutzername und Passwort
GEOSERVER_USER="admin"
GEOSERVER_PASSWORD="geoserver"

# Daten für den neuen Datenspeicher
WORKSPACE="ne"
DATASTORE_NAME="corine_2018_nrw"
DATASTORE_TYPE="GeoPackage"
FILE_PATH="./Docker/PG_image/data/corine_2018_nrw.gpkg"

# GeoServer-REST-API-Endpunkt für das Hinzufügen eines neuen Datenspeichers
REST_API_ENDPOINT="${GEOSERVER_URL}/rest/workspaces/${WORKSPACE}/datastores"

# Authentifizierungsinformationen für curl
CURL_AUTH="--user ${GEOSERVER_USER}:${GEOSERVER_PASSWORD}"

# Erstelle den neuen Datenspeicher
curl ${CURL_AUTH} -v -X POST -H "Content-type: application/json" -d '{
  "dataStore": {
    "name": "'${DATASTORE_NAME}'",
    "connectionParameters": {
      "entry": [
        {
          "@key": "host",
          "$": "localhost"
        },
        {
          "@key": "port",
          "$": "5432"
        },
        {
          "@key": "database",
          "$": "postgres"
        },
        {
          "@key": "user",
          "$": "admin"
        },
        {
          "@key": "passwd",
          "$": "geoserver"
        },
        {
          "@key": "schema",
          "$": "public"
        },
        {
          "@key": "Expose primary keys",
          "$": "true"
        },
        {
          "@key": "Estimated extends",
          "$": "true"
        },
        {
          "@key": "dbtype",
          "$": "geopkg"
        }
      ]
    }
  }
}' ${REST_API_ENDPOINT}

curl ${CURL_AUTH} -v -X POST -H "Content-type: application/json" "${GEOSERVER_URL}/rest/reload"

echo "Anfrage abgeschlossen."
read -p "Drücke Enter zum Beenden"