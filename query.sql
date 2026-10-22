-- Currency-safe project totals. quantity_milli * rate_cents / 100000 = currency units.
SELECT p.id,p.currency,ROUND(SUM(b.quantity_milli*b.rate_cents)/100000.0,2) AS contract_value
FROM projects p JOIN boq b ON b.project_id=p.id GROUP BY p.id,p.currency;
