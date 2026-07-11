# Schritte 1: Technisches Setup in RStudio & Begrundung der Installation eigene Pakete
# 1.1 :  Wir installieren das Paket (readxl), um Excel-Dateien (.xls und .xlsx) in R einzulesen.
# Es enthält die Funktion read_excel. Um diese nutzen zu können, müssen Sie das Paket mit dem Befehl library(readxl) aktivieren

# 1.1.1: library() ist der Funktion, damit wir ein bereits installiertes Paket zum Beispile library(readxl) in Ihre aktuelle R-Sitzung laden.
# 1.1.2: Nachdem wir das Befehl library(readxl) ausgeführt haben stehen wir die speziellen Funktionen des Pakets zur Verfügung
# 1.1.3: read_excel ist eine Funktion: Dies ist die eigentliche Anweisung innerhalb des readxl-Pakets, mit der Daten aus einer Excel-Tabelle einer 
#Variablen zugewiesen werden (z. B. meine_daten <- read_excel(...))
#1.1.4: split() ist eine Funktion, die bereits fest in die Programmiersprache RStudio integriert ist.

# Schritte 2: Datenimport und Vorbereitung (KDD)
            # 2.1: mit folgende Funktion laden wir die speziell für diese Aufgabe bereitgestellten Transaktionsdaten  Excel-Daten in R.

library(readxl)

# 2.3: jetzt importieren wir die Datei (Transaktionen_Apriori.xlsx) in RStudio mit folgende Funktion.
# Was passiert? R führt die Funktion aus, liest die Excel-Datei ein und gibt das Ergebnis direkt in der Konsole aus
# Da unser Excel Datei in einem Unterordner liegt schreiben wir die name dieses ordner in diesem fall (data/) Vorwärts-Schrägstrich und dann die Dateiname:

read_excel("data/Transaktionen_Apriori.xlsx")


# Schritte 3: Daten gruppieren & Transformation
           # split(...): Da in unsere  Tabelle jedes Produkt in einer eigenen Zeile steht, gruppieren wir  mit split alle Produkte (ProduktGruppeName), die zur 
           # selben BestellungNummer gehören. Da der Apriori-Algorithmus "Warenkörbe" statt einzelner Zeilen benötigt, fassen wir die Produkte mit split() 
           # nach ihrer BestellungNummer zusammen

# read_excel("data/Transaktionen_Apriori.xlsx")
# Was passiert? R führt die Funktion aus, liest die Excel-Datei ein und gibt das Ergebnis direkt in der Konsole aus.
# Das Problem: Die Daten werden nicht dauerhaft gespeichert. Sobald die Ausgabe über den Bildschirm gelaufen ist, sind sie für R wieder "vergessen".
# Konsequenz: Sie können keine weiteren Befehle darauf anwenden. Wenn Sie danach versuchen, split() zu nutzen, wird R die Daten nicht finden, da sie 
# keinen Namen haben, unter dem sie im Environment (Arbeitspeicher) abgelegt wurden

# deswegen nutzen wir folgende Funktion:
# meine_daten <- read_excel("data/Transaktionen_Apriori.xlsx")
# Was passiert? Hier nutzen Sie den Zuweisungsoperator <-.
# Dieser Befehl sagt R: „Lies die Excel-Datei und speichere den gesamten Inhalt unter dem Namen meine_daten ab“.
# Der Vorteil: Die Daten erscheinen nun in Ihrem Environment-Fenster (oben rechts in RStudio)

meine_daten <- read_excel("data/Transaktionen_Apriori.xlsx")



