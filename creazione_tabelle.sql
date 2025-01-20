-- Tabella Clienti
CREATE TABLE clienti (
    numero_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    anno_di_nascita INT,
    regione_residenza VARCHAR(50)
);

-- Tabella Prodotti
CREATE TABLE prodotti (
    id_prodotto SERIAL PRIMARY KEY,
    descrizione VARCHAR(255),
    in_produzione BOOLEAN,
    in_commercio BOOLEAN,
    data_attivazione DATE,
    data_disattivazione DATE
);

-- Tabella Fornitori
CREATE TABLE fornitori (
    numero_fornitore SERIAL PRIMARY KEY,
    denominazione VARCHAR(100),
    regione_residenza VARCHAR(50)
);

-- Tabella Fatture
CREATE TABLE fatture (
    numero_fattura SERIAL PRIMARY KEY,
    tipologia VARCHAR(50),
    importo NUMERIC(10, 2),
    iva NUMERIC(5, 2),
    id_cliente INT REFERENCES clienti(numero_cliente),
    data_fattura DATE,
    numero_fornitore INT REFERENCES fornitori(numero_fornitore)
);
