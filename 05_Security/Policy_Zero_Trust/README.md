# 🔐 Policy Zero Trust | Sicurezza Granulare
> *Implementazione del paradigma "Mai fidarsi, verificare sempre" per ogni transazione interna ed esterna.*

## 🛠️ Architettura di Difesa
La sicurezza non è più perimetrale, ma distribuita su ogni singolo asset:
* **Access Control (Principio del Privilegio Minimo):** Ogni utente e ogni script di automazione opera con i permessi minimi necessari. Le credenziali sono gestite tramite Vault sicuri e ruoli definiti.
* **Micro-segmentazione:** L'infrastruttura è suddivisa in **VLAN isolate**. Il traffico tra il modulo "Ponti" (Automazioni) e il "Cuore" (Database) è filtrato e monitorato costantemente per impedire movimenti laterali non autorizzati.
* **Autenticazione Continua:** Implementazione di MFA (Multi-Factor Authentication) per gli accessi amministrativi e certificati per le comunicazioni machine-to-machine.



## 📂 Organizzazione File
* `/access-rules`: Definizione delle ACL (Access Control Lists) e delle policy firewall.
* `/identity-management`: Script per il controllo degli accessi e la rotazione delle chiavi.
* `/auditing`: Report periodici sui tentativi di accesso e analisi delle vulnerabilità.

---
> **Obiettivo:** Ridurre drasticamente la superficie di attacco e contenere eventuali minacce all'interno di singoli segmenti isolati.