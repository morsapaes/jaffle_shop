CREATE SOURCE IF NOT EXISTS customers
FROM FILE '/tmp/seeds/raw_customers.csv'
WITH (tail = true)
FORMAT CSV WITH 3 COLUMNS;

CREATE SOURCE IF NOT EXISTS orders
FROM FILE '/tmp/seeds/raw_orders.csv'
WITH (tail = true)
FORMAT CSV WITH 4 COLUMNS;

CREATE SOURCE IF NOT EXISTS payments
FROM FILE '/tmp/seeds/raw_payments.csv'
WITH (tail = true)
FORMAT CSV WITH 4 COLUMNS;
