select sysdate
,hire_date
,(sysdate-hire_date)/7
from employees;

select sysdate
,hire_date
,round((sysdate-hire_date)/7)
from employees;

select (sysdate - start_date)/7 weeks
      ,(sysdate - start_date) as days
       from Ad_Exam_details
       where exam_id=550;
       
select first_name ||' '||last_name
,sysdate 
,hire_date
,round((sysdate-hire_date)/7) as weeks_since_hired
,round((sysdate-hire_date)/365) years
,MONTHS_BETWEEN(SYSDATE,hire_date) months_since_hired
,add_months(sysdate,2) "2_MONTHS_FROM_NOW"
,next_day(sysdate,'Friday')next_friday
,next_day(hire_date, 'Monday')the_following_monday
,next_day(sysdate,4)skip_4_days
from employees
where round((sysdate-hire_date)/365)>5;

select hire_date
,round(hire_date,'Year') as round_year
,round(hire_date,'Month') as round_month
,sysdate
,round(sysdate,'Year') as round_this_year
,round(sysdate,'Month') as round_this_month
,trunc(sysdate,'Month') as trunc_month
,trunc(sysdate,'Year') as trunc_year
from employees;
