
# GeoServer-URL
GEOSERVER_URL="http://localhost:8081/geoserver"

# GeoServer-Benutzername und Passwort
GEOSERVER_USER="admin"
GEOSERVER_PASSWORD="geoserver"

# Arbeitsbereich und Datenspeicher zum Löschen
WORKSPACE="ne"
DATASTORE_NAME="corine_2018_nrw.gpkg"

# GeoServer-REST-API-Endpunkt zum Löschen des Datenspeichers
REST_API_ENDPOINT="${GEOSERVER_URL}/rest/workspaces/${WORKSPACE}/datastores/${DATASTORE_NAME}"

# Authentifizierungsinformationen für curl
CURL_AUTH="--user ${GEOSERVER_USER}:${GEOSERVER_PASSWORD}"

# Ausgabe von Informationen
echo "Lösche den Datenspeicher:"
echo "GeoServer URL: ${GEOSERVER_URL}"
echo "Benutzername: ${GEOSERVER_USER}"
echo "Arbeitsbereich: ${WORKSPACE}"
echo "Datenspeichername: ${DATASTORE_NAME}"

# Sende Anfrage an GeoServer zum Löschen des Datenspeichers
echo "Sende Anfrage an GeoServer..."
curl ${CURL_AUTH} -v -X DELETE ${REST_API_ENDPOINT}

echo "Löschanfrage abgeschlossen."
read -p "Drücke Enter zum Beenden"