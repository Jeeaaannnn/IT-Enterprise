# 🏷️ Pricing List | Listini Dinamici
> *Integrazione logica tra le condizioni commerciali dell'ERP e la piattaforma e-commerce.*

## 💹 Logiche di Prezzo
Il modulo gestisce la complessità dei listini personalizzati tipici del settore B2B:
* **Dynamic Integration:** Sincronizzazione automatica degli sconti per quantità (tier pricing) e dei listini concordati estratti direttamente dal database ERP.
* **Performance Caching:** Implementazione di sistemi di caching intelligente per le query di prezzo, garantendo caricamenti rapidi della pagina anche con migliaia di regole di sconto attive.
* **Customer Groups:** Mappatura automatica dei gruppi clienti tra ERP e PrestaShop per l'applicazione immediata delle promozioni.

## 📂 Organizzazione File
* `/logic`: Script PHP per il calcolo e la gestione dei prezzi dinamici.
* `/cache-config`: Configurazioni per l'ottimizzazione del database e Redis/Memcached.
* `/sql-views`: Viste SQL per l'estrazione rapida delle regole di prezzo.

---
> **Obiettivo:** Garantire che ogni cliente visualizzi sempre il prezzo corretto, eliminando le discrepanze tra ufficio vendite e portale online.