{%- macro limit_data_in_dev(timestamp_column) -%}

    where {{ timestamp_column }} >= dateadd(day, -3, current_timestamp)
    
{% endmacro %}