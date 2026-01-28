# 🔵 IBM DB2 | Legacy Power Integration
> *Sistemi di interconnessione per l'estrazione e il bridging dei dati dai sistemi IBM Power (AS400/iSeries).*

## 🛠️ Architettura di Connessione
L'integrazione con l'ambiente IBM è focalizzata sulla stabilità e sul minimo impatto prestazionale:
* **Middleware Integration:** Configurazione e ottimizzazione di driver **OLEDB/ODBC** e connettori .NET specifici per l'estrazione sicura.
* **LPAR Bridging:** Implementazione di tecniche di isolamento delle query per evitare il degrado delle performance sulle partizioni logiche (LPAR) di produzione.

## 📂 Organizzazione File
* `/drivers`: Documentazione e configurazioni per i connettori di sistema.
* `/queries`: Repository di SQL "Legacy-compliant" ottimizzate per DB2.
* `/schemas`: Mappatura delle librerie e dei file fisici IBM.

---
> **Obiettivo:** Creare un accesso trasparente ai dati legacy garantendo la continuità operativa dei sistemi IBM Power.