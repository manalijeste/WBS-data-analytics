USE magist;

SELECT 
    o.order_purchase_timestamp,
    o.order_estimated_delivery_date,
    o.order_delivered_customer_date,
    o.order_delivered_carrier_date,
    c.customer_zip_code_prefix,
    s.seller_id,
    s.seller_zip_code_prefix,
    oi.shipping_limit_date,
    CASE
        WHEN o.order_estimated_delivery_date < o.order_delivered_customer_date THEN 'delayed'
        WHEN o.order_estimated_delivery_date > o.order_delivered_customer_date THEN 'early'
        WHEN o.order_delivered_carrier_date < o.order_delivered_customer_date THEN 'false'
    END AS delivery_info
FROM
    orders o
        LEFT JOIN
    customers c ON o.customer_id = c.customer_id
        LEFT JOIN
    order_items oi ON oi.order_id = o.order_id
        LEFT JOIN
    sellers s ON s.seller_id = oi.seller_id;
    
SELECT 
    o.order_purchase_timestamp,
    o.order_estimated_delivery_date,
    o.order_delivered_customer_date,
    o.order_delivered_carrier_date,
    c.customer_zip_code_prefix,
    s.seller_id,
    s.seller_zip_code_prefix,
    oi.shipping_limit_date,
    g.zip
    /*CASE
        WHEN o.order_estimated_delivery_date < o.order_delivered_customer_date THEN 'delayed'
        WHEN o.order_estimated_delivery_date > o.order_delivered_customer_date THEN 'early'
        WHEN o.order_delivered_carrier_date < o.order_delivered_customer_date THEN 'false'
    END AS delivery_info*/
FROM
    orders o
        LEFT JOIN
    customers c ON o.customer_id = c.customer_id
        LEFT JOIN
    order_items oi ON oi.order_id = o.order_id
        LEFT JOIN
    sellers s ON s.seller_id = oi.seller_id
    LEFT JOIN
    geo g ON g.zip_code_prefix = s.seller_zip_code_prefix;





