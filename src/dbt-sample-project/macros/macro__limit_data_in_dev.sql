{%- macro limit_data_in_dev(timestamp_column) -%}

{{% if target.name == 'dev' %}}
where {{ timestamp_column }} >= dateadd(day, -3, current_timestamp)
{{% endif %}}
    
{% endmacro %}