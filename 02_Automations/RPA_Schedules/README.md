# 🤖 RPA & Schedules | Robotica e Orchestrazione
> *Automazione dei processi basata su interfaccia e gestione intelligente delle tempistiche di esecuzione.*

## 🧠 Robotica e OCR
L'automazione si sostituisce all'operatore per i compiti a scarso valore aggiunto:
* **Pipeline OCR:** Analisi di documenti PDF/Immagine tramite motori di riconoscimento ottico per l'estrazione dati.
* **Terminal Emulation:** Inserimento dati automatizzato su terminali legacy e interfacce prive di API native.

## ⏱️ Orchestratore Temporale (Schedules)
Tutti i task presenti in questa cartella sono regolati da criteri di efficienza:
* **Low-Traffic Windows:** Esecuzione dei processi pesanti durante le ore notturne per non impattare sul "Ferro" (Infrastruttura).
* **Retry Logic:** Sistema di gestione dei fallimenti con *exponential backoff* in caso di timeout dei servizi o picchi di carico.

## 📂 Organizzazione File
* `/flows`: Definizione dei workflow robotici.
* `/ocr-configs`: Template di lettura per diversi tipi di documenti (Fatture, DDT).
* `/cron-jobs`: Script di schedulazione e definizione dei trigger temporali.

---
> **Obiettivo:** Trasformare i documenti analogici in dati strutturati senza l'intervento umano.