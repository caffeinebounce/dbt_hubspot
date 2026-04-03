{% macro get_owner_team_columns() %}

{% set columns = [
    {"name": "_synced_at", "datatype": dbt.type_timestamp()},
    {"name": "_deleted", "datatype": dbt.type_boolean()},
    {"name": "owner_id", "datatype": dbt.type_int()},
    {"name": "team_id", "datatype": dbt.type_int()},
    {"name": "is_team_primary", "datatype": dbt.type_boolean()}
] %}

{{ return(columns) }}

{% endmacro %}
