# 🐚 Scripts | Manutenzione Sistemistica
> *Strumenti di amministrazione proattiva per la salute dei server e la gestione dell'identità aziendale.*

## 🛠️ Tecnologie Core
Il modulo utilizza un approccio bilingue per massimizzare la compatibilità:

### 🟦 PowerShell (Windows Ecosystem)
* **Hyper-V Management:** Monitoraggio della salute dei nodi, gestione delle repliche e controllo quote disco.
* **Active Directory:** Automazione del ciclo di vita degli utenti (Onboarding/Offboarding) e auditing dei permessi.

### 🟨 Python (Cross-Platform)
* **Data Processing:** Manipolazione rapida di file di log e conversione formati.
* **Log Rotation:** Script per l'archiviazione e la pulizia automatica dei log di sistema per prevenire saturazioni di storage.

## 📂 Organizzazione File
* `/ps-modules`: Funzioni PowerShell riutilizzabili per l'amministrazione server.
* `/py-tools`: Utility Python per l'elaborazione file e task di manutenzione.
* `/logs`: Output delle esecuzioni (solo per debugging locale).

---
> **Obiettivo:** Garantire che l'infrastruttura sia sempre "pulita", aggiornata e performante.