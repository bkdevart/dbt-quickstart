with customers as (

    select * from {{ ref('dim_customers') }}

),

payments as (
    select * from {{ ref('stg_payments') }}
)


select
    orderid,
    customer_id,
    amount
from customers 
    left join payments on
        customers.customer_id = payments.id
