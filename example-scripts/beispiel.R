#example script for using in RStudio

library(sf) # simple features packages for handling vector GIS data
library(httr) # generic webservice package
library(tidyverse) # a suite of packages for data wrangling, transformation, plotting, ...
library(terra)
library(raster)
library(tmap)


request <- "http://geoserver:8080/geoserver/ne/wms?service=WMS&version=1.1.0&request=GetMap&layers=ne%3Acorine_2018_nrw&bbox=4031295.0%2C3029602.75%2C4282894.0%2C3269938.75&width=768&height=733&srs=EPSG%3A3035&styles=&format=application/openlayers"
res <- GET(url = request)
print(res)
