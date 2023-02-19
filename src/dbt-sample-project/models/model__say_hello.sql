select 
    {{ say_hello() }}
from
    {{ limit_data_in_dev('timestamp_col') }}