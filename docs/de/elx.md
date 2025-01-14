# elx

## Struktur des Installers

Der **elx** ist ein Modul, das mehrere Skripte und Batch-Dateien enthält, um die Installation und Verwaltung von Modulen und Anwendungen zu erleichtern. Im Folgenden findest du die Verzeichnisstruktur des Installers:

```sh
C://Windows/System32   # Lokales System
├─ ELW 
│  ├─ program
│  │  ├─ help.ps1      # PowerShell-Skript für Hilfe
│  │  ├─ install.ps1   # PowerShell-Skript für die Installation
│  │  └─ setup.ps1     # PowerShell-Skript für die Einrichtung
│  ├─ install.bat      # Batch-Datei für die Installation
│  └─ move.bat         # Batch-Datei für das Verschieben von Dateien
└─ elx.bat             # Batch-Datei, die im Konsolenmodus ausgeführt wird
```

In dieser Struktur gibt es mehrere Dateien, die jeweils eine spezielle Funktion haben:

- **help.ps1**: Ein PowerShell-Skript, das dem Benutzer hilft, die Funktionsweise des Installers zu verstehen und Antworten auf häufig gestellte Fragen zu erhalten.
- **install.ps1**: Dieses Skript führt die tatsächliche Installation der Module und Tools durch, die mit dem elx-Installer verwaltet werden.
- **setup.ps1**: Ein Skript, das sicherstellt, dass alle erforderlichen Abhängigkeiten und Konfigurationen für den Installer korrekt eingerichtet werden.
- **install.bat**: Eine Batch-Datei, die als Installationsskript für den gesamten Installer dient und auf Windows-Systemen ausgeführt wird.
- **move.bat**: Eine Batch-Datei, die dazu dient, Dateien an den richtigen Ort im System zu verschieben, um die Installation abzuschließen.
- **elx.bat**: Die zentrale Batch-Datei, die als Einstiegspunkt dient, um den Installer im Konsolenmodus zu starten und mit den verschiedenen Funktionen des Installers zu interagieren.

---

## Befehle

Der elx-Installer bietet mehrere Befehle, die in der Konsole ausgeführt werden können. Diese Befehle ermöglichen die Einrichtung und Verwaltung von Modulen und Anwendungen.

### **setup**

**Beschreibung**:  
Der `elx setup`-Befehl muss nach der Installation des Tools ausgeführt werden, um wichtige Abhängigkeiten und Konfigurationen hinzuzufügen. Dies stellt sicher, dass alle erforderlichen Module und Konfigurationen korrekt eingerichtet werden, bevor mit der tatsächlichen Installation von Modulen fortgefahren werden kann.

**Verwendung**:  
Führe diesen Befehl aus, um die notwendigen Abhängigkeiten und Konfigurationen für den Installer vorzubereiten.

```ps
ps> elx setup  # Richte den Modul-Installer ein
```

---

### **install**

**Beschreibung**:  
Der `elx install`-Befehl wird verwendet, um die Module und Anwendungen auf deinem lokalen PC zu installieren. Dieser Befehl wird nach der erfolgreichen Einrichtung des Installers und der Konfiguration von Abhängigkeiten ausgeführt.

**Verwendung**:  
Nutze diesen Befehl, um die gewünschten Module oder Anwendungen auf deinem System zu installieren. Dieser Schritt kann je nach den installierten Modulen einige Zeit in Anspruch nehmen.

```ps
ps> elx install  # Installiere die Module auf deinem System
```

---

### **--help**

**Beschreibung**:  
Der `elx --help`-Befehl bietet eine schnelle Möglichkeit, Unterstützung direkt in der Konsole zu erhalten. Wenn du dir nicht sicher bist, wie ein bestimmter Befehl verwendet wird oder eine Hilfeanfrage hast, kannst du diesen Befehl ausführen, um Informationen und Anleitungen zu erhalten.

**Verwendung**:  
Führe diesen Befehl aus, um eine vollständige Liste der verfügbaren Befehle sowie deren Beschreibung anzuzeigen. Dies ist besonders nützlich, wenn du Informationen zu den verfügbaren Optionen benötigst oder weitere Hilfe benötigst.

```ps
ps> elx --help  # Hole dir Hilfe in der Konsole
```

---

## Weitere Hinweise

- **Verwendung von PowerShell und Batch-Dateien**: Der elx-Installer verwendet sowohl PowerShell-Skripte als auch Batch-Dateien, um eine breite Kompatibilität mit verschiedenen Windows-Umgebungen zu gewährleisten. Batch-Dateien (`.bat`) können auch auf älteren Windows-Systemen verwendet werden, während PowerShell-Skripte (`.ps1`) für modernere und leistungsfähigere Systemkonfigurationen vorgesehen sind.
- **Administratorrechte**: Für einige Befehle und Funktionen des Installers, insbesondere für das Verschieben von Dateien und das Installieren von Modulen, sind Administratorrechte erforderlich. Stelle sicher, dass du PowerShell oder die Konsole mit Administratorrechten ausführst, um Berechtigungsfehler zu vermeiden.
- **Fehlerbehebung**: Wenn bei der Installation oder beim Setup Fehler auftreten, stelle sicher, dass alle Abhängigkeiten korrekt installiert und konfiguriert sind. Verwende den `--help`-Befehl, um weitere Informationen zur Fehlerbehebung zu erhalten.



