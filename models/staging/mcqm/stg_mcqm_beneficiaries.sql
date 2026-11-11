select
    * exclude (FILE_DATE),
    {{ try_to_cast_date('cast(FILE_DATE as ' ~ dbt.type_string() ~ ')') }}
        as FILE_DATE
from {{ source('mssp_raw', 'mcqm_beneficiaries') }}
