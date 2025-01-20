SELECT * 
FROM clienti
WHERE nome = 'Mario';

SELECT nome, cognome
FROM clienti
WHERE anno_di_nascita = 1982;

SELECT COUNT(*) AS numero_fatture
FROM fatture
WHERE iva = 20.00;

SELECT *
FROM prodotti
WHERE EXTRACT(YEAR FROM data_attivazione) = 2017
  AND (in_produzione = TRUE OR in_commercio = TRUE);

SELECT f.*, c.nome, c.cognome, c.regione_residenza
FROM fatture f
JOIN clienti c ON f.id_cliente = c.numero_cliente
WHERE f.importo < 1000;

SELECT f.numero_fattura, f.importo, f.iva, f.data_fattura, forn.denominazione AS nome_fornitore
FROM fatture f
JOIN fornitori forn ON f.numero_fornitore = forn.numero_fornitore;

SELECT EXTRACT(YEAR FROM data_fattura) AS anno, COUNT(*) AS numero_fatture
FROM fatture
WHERE iva = 20.00
GROUP BY EXTRACT(YEAR FROM data_fattura)
ORDER BY anno;

SELECT EXTRACT(YEAR FROM data_fattura) AS anno, COUNT(*) AS numero_fatture, SUM(importo) AS somma_importi
FROM fatture
GROUP BY EXTRACT(YEAR FROM data_fattura)
ORDER BY anno;

