select 
    p.product_category,
    p.product_id,
    p.product_name,
    ps.total_sales
from products_2 p
join (
    select 
        o.product_id,
        SUM(o.order_amount) as total_sales
    from orders_2 o
    group by o.product_id
) ps on p.product_id = ps.product_id
where ps.total_sales = (
    select MAX(sub.total_sales)
    from (
        select 
            o2.product_id,
            SUM(o2.order_amount) AS total_sales
        from orders_2 o2
        join products_2 p2 ON o2.product_id = p2.product_id
        where p2.product_category = p.product_category
        group by o2.product_id
    ) sub
);
