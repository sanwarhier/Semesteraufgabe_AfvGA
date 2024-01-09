import geopandas
import requests
import rasterio
import fiona
import numpy

response = requests.get("http://geoserver:8080/geoserver/ne/wms?service=WMS&version=1.1.0&request=GetMap&layers=ne%3Acorine_2018_nrw&bbox=4031295.0%2C3029602.75%2C4282894.0%2C3269938.75&width=768&height=733&srs=EPSG%3A3035&styles=&format=application/openlayers")
print(response)