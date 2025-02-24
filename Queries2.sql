# Finding user data who have achieved certain goals and offers. 
# A JSONB response is stored under extra column.

# QUERY 1
select user_id, amount, extra from user_wallet_history where transaction_type='CREDIT'
and type='ELITE_OFFER_REWARD' and extra::jsonb->>'name' = 'Animals & Coins'
and (extra::jsonb->>'goal_title' = 'Reach Level 7 within 60 days'
or extra::jsonb->>'goal_title' = 'Reach Level 25 within 60 days' )

# QUERY 2
SELECT 
    il.gaid, 
    il.device_id, 
    ud.user_id
FROM install_log il
JOIN user_devices ud 
ON il.device_id = ud.device_id