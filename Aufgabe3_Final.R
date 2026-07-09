# Schritte 1: Technisches Setup in RStudio & Begrundung der Installation eigene Pakete
# 1.1 :  Wir installieren das Paket (readxl), um Excel-Dateien (.xls und .xlsx) in R einzulesen.
# Es enthält die Funktion read_excel. Um diese nutzen zu können, müssen Sie das Paket mit dem Befehl library(readxl) aktivieren

# 1.1.1: library() ist der Funktion, damit wir ein bereits installiertes Paket zum Beispile library(readxl) in Ihre aktuelle R-Sitzung laden.
# 1.1.2: Nachdem wir das Befehl library(readxl) ausgeführt haben stehen wir die speziellen Funktionen des Pakets zur Verfügung
# 1.1.3: read_excel ist eine Funktion: Dies ist die eigentliche Anweisung innerhalb des readxl-Pakets, mit der Daten aus einer Excel-Tabelle einer 
#Variablen zugewiesen werden (z. B. meine_daten <- read_excel(...))

# Schritte 2: Datenimport und Vorbereitung (KDD)
# 2.1: wir installieren folgende Paket um bereitgestellten Excel-Daten in R zu laden

library(readxl)

# 2.3: jetzt importieren wir die Datei (Transaktionen_Apriori.xlsx) in RStudio mit folgende Funktion.
# Da unser Excel Datei in einem Unterordner liegt schreiben wir die name dieses ordner in diesem fall (data/) Vorwärts-Schrägstrich und dann die Dateiname:

read_excel("data/Transaktionen_Apriori.xlsx")

