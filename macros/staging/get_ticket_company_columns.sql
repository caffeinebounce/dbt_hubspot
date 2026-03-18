{% macro get_ticket_company_columns() %}

{% set columns = [
    {"name": "_synced_at", "datatype": dbt.type_timestamp()},
    {"name": "ticket_id", "datatype": dbt.type_int()},
    {"name": "company_id", "datatype": dbt.type_int()},
    {"name": "category", "datatype": dbt.type_string()}
] %}

{{ return(columns) }}

{% endmacro %}
