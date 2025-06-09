select
id as payment,
orderid as order_id,
paymentmethod as payment_method,
status,
amount / 100 as amount,
created as created_at
from  {{ source('stg_payments', 'payment') }}

