# 🫀 Database | **Il Cuore**
> *Gestione, migrazione e sincronizzazione del patrimonio informativo aziendale.*

## 📂 Struttura del Modulo

### 🔵 IBM DB2
Interconnessione con i sistemi IBM Power (AS400/iSeries).
* **Middleware Integration:** Utilizzo di driver OLEDB/ODBC e connettori specifici per l'estrazione dati.
* **Legacy Bridging:** Tecniche di isolamento per query pesanti su partizioni LPAR.

### 🚀 Migrations
Evoluzione dei sistemi SQL Server.
* **Modernizzazione:** Script di migrazione schemi e dati da SQL legacy verso istanze aggiornate.
* **Performance Tuning:** Analisi degli Execution Plan, ottimizzazione degli indici e deframmentazione tabelle.

### 🔄 Sync & Coerenza
* **CDC (Change Data Capture):** Monitoraggio dei log transazionali per catturare le modifiche ai dati (Insert/Update/Delete) senza impattare sulla CPU.
* **Data Consistency:** Meccanismi di riconciliazione per garantire l'allineamento tra magazzino fisico e magazzino logico.



---
*Obiettivo: Latenza di sincronizzazione < 10 secondi e integrità del dato al 100%.*