# Contract Valuation

Aggregate BOQ contract value by project and currency.

Projects retain their own currencies. This query is an analytical estimate using SQLite aggregation, not an invoice calculation engine.

## Run

The SQL runs on SQLite. The example runner needs Python 3.11 or newer.

```sh
python main.py
python -m unittest discover -s tests -v
```

`schema.sql` defines the source tables. `query.sql` contains the standalone query.
The example runner creates and closes an isolated in-memory database.
