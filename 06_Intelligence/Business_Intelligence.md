# JGalileo Integration Suite

**JGalileo Integration Suite** è un ecosistema di automazione progettato per connettere l'ERP aziendale **JGalileo (IBM i)** con piattaforme e-commerce **PrestaShop** e strumenti di Business Intelligence (**QlikView**).

## 🚀 Obiettivi del Progetto
* **Automazione Stock:** Sincronizzazione real-time delle giacenze (Tabella ANA00F).
* **Gestione Ordini:** Importazione automatica degli ordini Web nel ciclo attivo di JGalileo.
* **Analisi Dati:** Creazione di una base dati strutturata per analisi BI professionali.

## 🛠 Stack Tecnologico
* **ERP:** JGalileo su IBM Power Systems (OS/400).
* **Middleware:** Python 3.x con connessione ODBC/PyODBC.
* **Database Web:** MySQL / MariaDB (PrestaShop).
* **Infrastruttura:** Sicurezza dei dati basata su policy di backup 3-2-1.

## 📁 Struttura del Repository
1. **Documentazione:** Logica di progetto e architettura.
2. **Scripts:** Codice sorgente per la sincronizzazione.
3. **Database_Layout:** Schemi SQL delle tabelle JGalileo coinvolte.
4. **Prestashop:** Specifiche del front-end e mappatura dei campi.