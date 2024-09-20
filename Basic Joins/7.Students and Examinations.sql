select t1.student_id,t1.student_name,t2.subject_name,count(t3.student_id) as "attended_exams" 
from Students t1
inner join Subjects t2
left join Examinations t3
on (t1.student_id = t3.student_id AND t2.subject_name = t3.subject_name)
group by t1.student_id,t2.subject_name
order by student_id,subject_name
