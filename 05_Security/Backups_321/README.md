# 💾 Backup 3-2-1 | Resilienza del Dato
> *Strategia di conservazione multi-livello per garantire la disponibilità dei dati contro ogni scenario di perdita.*

## 📈 La Regola del 3-2-1
Garantiamo la sovranità del dato attraverso la ridondanza geografica e tecnologica:
* **3 Copie:** Il dato originale di produzione più almeno due copie di sicurezza.
* **2 Supporti:** Utilizzo di tecnologie diverse (es. Disco NAS per ripristino rapido e Tape/LTO o Storage a blocchi per conservazione a lungo termine).
* **1 Off-site:** Una copia è sempre conservata fuori dalla sede principale (Cloud Immutabile o Data Center remoto).
* **Immutabilità (WORM):** Utilizzo di **Object Lock** per impedire la cancellazione o la cifratura dei backup da parte di Ransomware.



## 📂 Organizzazione File
* `/configs`: Job di backup per SQL Server, VM Hyper-V e file system.
* `/test-reports`: Documentazione dei test di ripristino periodici.
* `/retention-policies`: Regole di conservazione dei dati in conformità con le normative legali.

---
> **Obiettivo:** Garantire la ripristinabilità dei dati al 100%, indipendentemente dalla natura del guasto o dell'attacco.