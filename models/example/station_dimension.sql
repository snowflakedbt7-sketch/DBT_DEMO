with cte as(
    select
    distinct
    START_STATIO_ID as START_STATION_ID ,
    START_STATION_NAME,
    
    START_LAT,
    START_LNG

    from {{ source('demo', 'bike') }}
    where RIDE_ID!='ride_id'
    limit 10

)
select* from cte