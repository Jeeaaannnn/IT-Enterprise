# 🆘 Disaster Recovery | Continuità Operativa
> *Piani d'azione e protocolli tecnici per il ripristino dei sistemi critici a seguito di un evento catastrofico.*

## ⏱️ Parametri di Ripristino (SLA)
Il successo del Disaster Recovery si misura attraverso due metriche fondamentali:
* **RPO (Recovery Point Objective):** La massima perdita di dati tollerabile. Puntiamo a un RPO di **<15 minuti** per le transazioni SQL critiche.
* **RTO (Recovery Time Objective):** Il tempo massimo necessario per riportare i sistemi online. Definiamo workflow di ripartenza prioritaria per i servizi di vendita (E-commerce) e logistica.

## 🛠️ Strategie di Failover
* **Replica VM:** Utilizzo di Hyper-V Replica per mantenere istanze dormienti dei server in un sito secondario.
* **Log Shipping / Mirroring:** Tecniche di replica database per mantenere il sito di DR costantemente aggiornato.
* **Runbooks:** Procedure passo-passo per il personale tecnico da seguire durante le emergenze.

## 📂 Organizzazione File
* `/dr-plans`: Documentazione tecnica delle procedure di emergenza.
* `/failover-scripts`: Script per il cambio puntamento DNS e attivazione dei nodi secondari.
* `/validation`: Log dei "DR Drill" (esercitazioni di ripristino simulate).

---
> **Obiettivo:** Minimizzare il downtime aziendale e proteggere il fatturato garantendo la ripartenza dei sistemi entro i limiti concordati.