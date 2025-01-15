# Elx

### _Die smarte Software für maximale Effizienz und Innovation!_

## Befehle

Der elx-Installer bietet mehrere Befehle, die in der Konsole ausgeführt werden können. Diese Befehle ermöglichen die Einrichtung und Verwaltung von Modulen und Anwendungen.

---

### **install** / **i**

**Beschreibung**:
Der `elx install / elx i`-Befehl wird verwendet, um die Module und Anwendungen auf deinem lokalen PC zu installieren. Dieser Befehl wird nach der erfolgreichen Einrichtung des Installers und der Konfiguration von Abhängigkeiten ausgeführt.

**Verwendung**:
Nutze diesen Befehl, um die gewünschten Module oder Anwendungen auf deinem System zu installieren. Dieser Schritt kann je nach den installierten Modulen einige Zeit in Anspruch nehmen.

```ps
elx i
```

---

### **--help**

**Beschreibung**:  
Der `elx --help`-Befehl bietet eine schnelle Möglichkeit, Unterstützung direkt in der Konsole zu erhalten. Wenn du dir nicht sicher bist, wie ein bestimmter Befehl verwendet wird oder eine Hilfeanfrage hast, kannst du diesen Befehl ausführen, um Informationen und Anleitungen zu erhalten.

**Verwendung**:  
Führe diesen Befehl aus, um eine vollständige Liste der verfügbaren Befehle sowie deren Beschreibung anzuzeigen. Dies ist besonders nützlich, wenn du Informationen zu den verfügbaren Optionen benötigst oder weitere Hilfe benötigst.

```ps
elx --help
```

---

### **--version** / **-v**

**Beschreibung**
Der `elx -v` Befehl checkt ob es neue updates hat und gibt die version die installiert ist aus

**Verwendung**
Führe diesen Befehl aus um zu schauen ob man noch die neuste version hat

```ps
elx -v
```

---

### **--update** / **-u**

**Beschreibung**
Der `elx -u` Befehl ist um die ganze Software zu aktualisieren und neu zu installieren

**Verwendung**
Zum installiern von updates und um fehler zu fixen

```ps
elx -u
```

---

## Struktur des Installers

Der **elx** ist ein Modul, das mehrere Skripte und Batch-Dateien enthält, um die Installation und Verwaltung von Modulen und Anwendungen zu erleichtern. Im Folgenden findest du die Verzeichnisstruktur des Installers:

```sh
C://Windows/System32        # Lokales System
├─ ELW
│  ├─ program
│  │  ├─ help.ps1           # PowerShell-Skript für Hilfe
│  │  ├─ install.ps1        # PowerShell-Skript für die Installation
│  │  ├─ error.ps1          # Error output
│  │  ├─ framework.exe      # Select your Software or App
│  │  ├─ gitoFree.ps1       # install gitoFree
│  │  ├─ update.ps1         # update elx
│  │  ├─ version.json       # versionise
│  │  └─ version.ps1        # check vor updates
│  ├─ install.bat           # Batch-Datei für die Installation
│  └─ move.bat              # Batch-Datei für das Verschieben von Dateien
└─ elx.bat                  # Batch-Datei, die im Konsolenmodus ausgeführt wird
```

In dieser Struktur gibt es mehrere Dateien, die jeweils eine spezielle Funktion haben:

-  **help.ps1**: Ein PowerShell-Skript, das dem Benutzer hilft, die Funktionsweise des Installers zu verstehen und Antworten auf häufig gestellte Fragen zu erhalten.
-  **install.ps1**: Dieses Skript führt die tatsächliche Installation der Module und Tools durch, die mit dem elx-Installer verwaltet werden.
-  **error.ps1**: Dieses Skript gibt einen error aus wenn kein befehl eingegeben wurde
-  **framework.exe**: Dieses Skript läst den user eine Softwäre auswählen zum installieren
-  **gitoFree.ps1**: Dieses Skript läht die Softwäre gito herunter es ist die free version
-  **update.ps1**: Dieses Skript updated den installer
-  **version.json**: Beinhalted die version der installierten app
-  **version.ps1**: Gibt die Version der app aus und checkt ob es updates hat
-  **install.bat**: Eine Batch-Datei, die als Installationsskript für den gesamten Installer dient und auf Windows-Systemen ausgeführt wird.
-  **move.bat**: Eine Batch-Datei, die dazu dient, Dateien an den richtigen Ort im System zu verschieben, um die Installation abzuschließen.
-  **elx.bat**: Die zentrale Batch-Datei, die als Einstiegspunkt dient, um den Installer im Konsolenmodus zu starten und mit den verschiedenen Funktionen des Installers zu interagieren.

---

## Weitere Hinweise

-  **Verwendung von PowerShell und Batch-Dateien**: Der elx-Installer verwendet sowohl PowerShell-Skripte als auch Batch-Dateien, um eine breite Kompatibilität mit verschiedenen Windows-Umgebungen zu gewährleisten. Batch-Dateien (`.bat`) können auch auf älteren Windows-Systemen verwendet werden, während PowerShell-Skripte (`.ps1`) für modernere und leistungsfähigere Systemkonfigurationen vorgesehen sind.
-  **Administratorrechte**: Für einige Befehle und Funktionen des Installers, insbesondere für das Verschieben von Dateien und das Installieren von Modulen, sind Administratorrechte erforderlich. Stelle sicher, dass du PowerShell oder die Konsole mit Administratorrechten ausführst, um Berechtigungsfehler zu vermeiden.
-  **Fehlerbehebung**: Wenn bei der Installation oder beim Setup Fehler auftreten, stelle sicher, dass alle Abhängigkeiten korrekt installiert und konfiguriert sind. Verwende den `--help`-Befehl, um weitere Informationen zur Fehlerbehebung zu erhalten.
