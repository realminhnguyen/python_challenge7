--Queries for Part 1
--1.1
CREATE VIEW cardholder_transactions AS
SELECT
    ch.id AS cardholder_id,
    t.id AS transaction_id,
    t.date,
    t.amount,
    m.name AS merchant_name
FROM
    transaction t
JOIN
    credit_card cc ON t.card = cc.card
JOIN
    card_holder ch ON cc.cardholder_id = ch.id
JOIN
    merchant m ON t.id_merchant = m.id;
SELECT * FROM cardholder_transactions;

--1.2
CREATE VIEW small_transaction_counts AS
SELECT
    ch.id AS cardholder_id,
    COUNT(*) AS small_transaction_count
FROM
    transaction t
JOIN
    credit_card cc ON t.card = cc.card
JOIN
    card_holder ch ON cc.cardholder_id = ch.id
WHERE
    t.amount < 2.00
GROUP BY
    ch.id;
SELECT * FROM small_transaction_counts;

--2.1
CREATE VIEW top_100_transactions_between_7_and_9 AS
SELECT
    id AS transaction_id,
    date,
    amount
FROM
    transaction
WHERE
    EXTRACT(HOUR FROM date) BETWEEN 7 AND 9
ORDER BY
    amount DESC
LIMIT 100;
SELECT * FROM top_100_transactions_between_7_and_9;



WITH fraudulent_transactions AS (
    SELECT
        id AS transaction_id,
        date,
        amount
    FROM
        transaction
    WHERE
        amount > 500 -- Adjust the threshold as needed
)
SELECT
    EXTRACT(HOUR FROM date) AS transaction_hour,
    COUNT(*) AS fraudulent_transaction_count
FROM
    fraudulent_transactions
GROUP BY
    transaction_hour
ORDER BY
    transaction_hour;
	
--3.1
CREATE VIEW top_merchants_prone_to_hacking AS
SELECT
    m.id AS merchant_id,
    m.name AS merchant_name,
    COUNT(*) AS small_transaction_count
FROM
    transaction t
JOIN
    merchant m ON t.id_merchant = m.id
WHERE
    t.amount < 2.00
GROUP BY
    m.id, m.name
ORDER BY
    small_transaction_count DESC
LIMIT 5;
SELECT * FROM top_merchants_prone_to_hacking;
