create function getNthHigherstSalary(n INT) returns INT
begin
 set n = n - 1;
 return (
   select distinct salary
   from Employee
   order by salary desc
   limit 1
   offset n
 );
end