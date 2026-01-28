# Configurazione PrestaShop B2B - JGalileo Integration

Questo modulo gestisce l'interfaccia web per i clienti professionali, sincronizzando i dati provenienti dal core ERP.

## Flussi di Dati:
* **Importazione Catalogo:** I prodotti vengono aggiornati basandosi sulla tabella `ANA00F` di JGalileo.
* **Sincronizzazione Stock:** La quantità disponibile su PrestaShop (`ps_stock_available`) è allineata in tempo reale con il campo `ARGIA` di JGalileo.
* **Export Ordini:** Ogni nuovo ordine web genera un record nella tabella `ORD00F` su IBM i per l'evasione immediata.

## Personalizzazioni B2B:
* **Visualizzazione Prezzi:** Solo per utenti registrati e verificati nell'anagrafica JGalileo.
* **Gestione Listini:** Applicazione automatica degli sconti personalizzati definiti nell'ERP.