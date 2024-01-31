-- sums the amount of successful payments

select sum(amount)

from {{ ref('stg_payments')}}

where status = 'success'
