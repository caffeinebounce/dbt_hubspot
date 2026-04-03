{% macro get_role_columns() %}

{% set columns = [
    {"name": "_synced_at", "datatype": dbt.type_timestamp()},
    {"name": "_deleted", "datatype": dbt.type_boolean()},
    {"name": "id", "datatype": dbt.type_int()},
    {"name": "name", "datatype": dbt.type_string()},
    {"name": "requires_billing_write", "datatype": dbt.type_boolean()}
] %}

{{ return(columns) }}

{% endmacro %}
