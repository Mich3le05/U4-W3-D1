INSERT INTO clienti (nome, cognome, anno_di_nascita, regione_residenza)
VALUES
    ('Mario', 'Rossi', 1982, 'Lombardia'),
    ('Anna', 'Bianchi', 1990, 'Lazio'),
    ('Luigi', 'Verdi', 1982, 'Piemonte');
SELECT * FROM clienti;
INSERT INTO prodotti (descrizione, in_produzione, in_commercio, data_attivazione, data_disattivazione)
VALUES
    ('Laptop', TRUE, TRUE, '2017-01-15', NULL),
    ('Smartphone', TRUE, FALSE, '2018-03-10', '2020-06-30'),
    ('Stampante', FALSE, TRUE, '2017-07-20', NULL);
SELECT * FROM prodotti;
INSERT INTO fornitori (denominazione, regione_residenza)
VALUES
    ('Tech Supply', 'Lombardia'),
    ('Digital Trade', 'Lazio'),
    ('Office Equipments', 'Veneto');
INSERT INTO fatture (tipologia, importo, iva, id_cliente, data_fattura, numero_fornitore)
VALUES
    ('Acquisto', 500.00, 20.00, 1, '2023-01-15', 1),
    ('Acquisto', 250.00, 20.00, 2, '2023-02-10', 2),
    ('Servizio', 800.00, 20.00, 3, '2023-03-05', 3),
    ('Riparazione', 300.00, 10.00, 1, '2023-05-22', 2);
