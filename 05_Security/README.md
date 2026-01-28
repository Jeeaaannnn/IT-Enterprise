# 🛡️ Security | **Lo Scudo**
> *Protezione proattiva della continuità operativa e della sovranità del dato.*

## 📂 Struttura del Modulo

### 🔐 Policy Zero Trust
* **Access Control:** Implementazione del principio di privilegio minimo. Ogni connessione tra Automazioni e Database è autenticata.
* **Micro-segmentazione:** Isolamento dei carichi di lavoro su VLAN distinte per limitare i movimenti laterali in caso di breach.

### 💾 Backup 3-2-1
* **Strategia:**
    * **3** Copie (Produzione + 2 Backup).
    * **2** Supporti (Disco locale + NAS/Tape).
    * **1** Off-site (Cloud immutabile o sede remota).
* **Immutabilità:** Protezione dei backup contro i Ransomware tramite Object Lock.

### 🆘 Disaster Recovery
* **RTO (Recovery Time Objective):** Tempo massimo per il ripristino dei servizi critici.
* **RPO (Recovery Point Objective):** Perdita di dati massima tollerabile (es. ultimi 15 minuti di transazioni).



---
*Obiettivo: Resilienza totale e ripristino garantito dei sistemi entro i tempi definiti (SLA).*