# Verteilte Geoanalyseplatform für Umweltdaten

## Anforderungen

Forschende und Expert:innen sollen Umweltdaten im Browser interaktiv mit R und Python analysieren und visualisieren können. Dazu soll es JupyterLab- und RStudioServer-Umgebungen geben, die bereits vorhandene Umweltdaten enthalten.
Die Anwendung soll mit Docker Compose entwickelt werden und kann öffentlich verfügbare Docker Images benutzen.
Die Skalierbarkeit und Mehrbenutzer-Nutzung soll diskutiert werden.

![Use Case Diagram](diagrams/use-cases.png "Use Case Diagram")
*Use-Case-Diagramm*

Im Use-Case-Diagramm werden die typischen Anwendungsfälle dargestellt. Die Forschenden und Expert:innen (Analysts) möchten in RStudio und Jupyter die Daten visualisieren, ihre Skripte ausführen und Ergebnisse speichern. Außerdem möchten sie auch außerhalb der RStudio- und Jupyter-Umgebungen auf die OGC Webservices zugreifen.

![Activity Diagram](diagrams/activity-diagram.png "Activity Diagram")
*Aktivitätsdiagramm aus Nutzer:innensicht. Es stellt den typischen Ablauf eines Programms dar, das in RStudio oder JupyterNotebook ausgeführt werden kann.*

Das Aktivitätsdiagramm zeigt einen typischen Ablauf eines der Python- oder R-Programme.

## Umsetzung

Durch die Nutzung von Docker-Containern lässt sich die verteilte Anwendung leicht auf anderen Rechnern deployen. 

![Component Diagram](diagrams/component-diagram.png "Component Diagram")
*Komponentendiagramm. Die Komponenten entsprechen den Docker-Containern.*

Das Komponentendiagramm zeigt die Docker-Container und die Schnittstellen.
Der Geoserver holt die Daten (z.B. GeoPackage) von der Datenbank.
Der Geoserver stellt einen WMS zur Verfügung, über das mit HTTP aus JupyterLab und RStudio zugegriffen werden kann.

## Diskussion