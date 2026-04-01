#Payment Type by company

SELECT DISTINCT
  company AS company,
  payment_type AS payment
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
LIMIT 500;

#Total Paid

SELECT fare + tips + tolls AS total_paid
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE fare > 20
LIMIT 500;

# Select the Tips in payments with cash to the company City Service

SELECT
  tips AS Gorjeta,
  payment_type AS Pagamento
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  company = 'City Service'
  AND fare BETWEEN 10 AND 50
  AND tips > 0
  AND payment_type = 'Cash';
