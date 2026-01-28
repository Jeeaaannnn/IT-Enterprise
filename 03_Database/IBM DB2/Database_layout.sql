-- JGALILEO INTEGRATION SUITE - Database Structure
-- Libreria Dati: JGALDAT

-- 1. Anagrafica Articoli (Tabella ANA00F)
-- Questa tabella è il cuore della sincronizzazione stock
CREATE TABLE JGALDAT.ANA00F (
    ARCOD CHAR(20) PRIMARY KEY, -- Codice Articolo
    ARDES CHAR(50),             -- Descrizione
    ARGIA DECIMAL(11, 3),       -- Giacenza a Magazzino
    ARLIS DECIMAL(11, 2),       -- Prezzo di Listino
    ARSTAT CHAR(1)              -- Stato (A=Attivo, S=Sospeso)
);

-- 2. Testata Ordini Web (Tabella ORD00F)
-- Tabella dove lo script scrive gli ordini provenienti da PrestaShop
CREATE TABLE JGALDAT.ORD00F (
    ORNUM DECIMAL(10, 0),       -- Numero Ordine (Generato da JGalileo)
    ORRIF CHAR(20),             -- Riferimento Ordine Web (ID PrestaShop)
    ORDAT DECIMAL(8, 0),        -- Data Ordine (YYYYMMDD)
    ORCLI CHAR(10)              -- Codice Cliente
);