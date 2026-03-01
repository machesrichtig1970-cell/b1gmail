#!/bin/bash

# 1. In das Server-Bibliotheksverzeichnis wechseln
cd src/serverlib/

# 2. Konfigurationsdateien aus Vorlagen erstellen
cp config.default.inc.php config.inc.php
cp version.default.inc.php version.inc.php

echo "✅ Konfigurationsdateien in src/serverlib/ erstellt."

# 3. Setup-Sperre entfernen
if [ -f "../setup/lock" ]; then
    rm "../setup/lock"
    echo "✅ Setup-Lock entfernt. Der Installer ist nun bereit."
else
    echo "ℹ️ Keine Setup-Lock-Datei gefunden oder bereits entfernt."
fi

# 4. Berechtigungen (optional, falls auf Linux-Server)
# chmod -R 777 ../../src/data/ # Beispiel für beschreibbare Ordner

echo "🚀 Fertig! Öffne jetzt http://localhost/dein-pfad/src/ im Browser."
