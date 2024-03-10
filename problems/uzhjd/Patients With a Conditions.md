```mysql
select patient_id, patient_name, conditions
from Patients
where (conditions Like 'DIAB1%' or conditions like'% DIAB1%');
```

[ 문제 ] https://leetcode.com/problems/patients-with-a-condition/?envType=study-plan-v2&envId=top-sql-50
