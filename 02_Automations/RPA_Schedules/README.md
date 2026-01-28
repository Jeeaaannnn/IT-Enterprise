# 🤖 RPA & Process Scheduling
> *Sottosistema per la robotizzazione del Data Entry, l'elaborazione documentale e l'orchestrazione temporale dei processi.*

## 📌 Panoramica
In questa cartella risiedono le logiche di automazione che sostituiscono i task manuali ripetitivi. Qui viene gestita l'intelligenza di acquisizione (OCR) e la pianificazione (Scheduling) di tutti i "Ponti" del sistema.

## 🛠️ Funzionalità
* **Data Entry Automatico:** Script e workflow per l'inserimento massivo di dati nei sistemi gestionali (ERP) senza intervento umano.
* **Integrazione OCR:** Pipeline per la conversione di documenti (PDF, scansioni) in dati strutturati pronti per l'elaborazione.
* **Orchestrazione & Schedulazione:** * Definizione dei trigger temporali.
    * Gestione delle fasce orarie ottimizzate per ridurre l'impatto sul "Ferro" (Infrastruttura).
    * Monitoraggio delle esecuzioni pianificate.



## 📋 Logica di Schedulazione
| Processo | Trigger | Priorità |
| :--- | :--- | :--- |
| Import Ordini OCR | Real-time / Event-based | Alta |
| Sync Listini | Giornaliero (Notturno) | Media |
| Cleanup Task | Settimanale | Bassa |

---
*Sicurezza: Tutti i processi RPA operano secondo il principio Zero Trust.*