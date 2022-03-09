
CREATE TABLE EMPY
       (EMPNO int ,
        ENAME VARCHAR(10),
        JOB VARCHAR(9),
        MGR int,
        HIREDATE date,
        SAL int,
        COMM int,
        DEPTNO int);


INSERT INTO EMPY VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        CAST('1980-12-17' as DATE),  800, NULL, 20);
INSERT INTO EMPY VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        CAST('1981-02-20' as DATE), 1600,  300, 30);
INSERT INTO EMPY VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        CAST('1981-02-22' as DATE), 1250,  500, 30);
INSERT INTO EMPY VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        CAST('1981-04-02' as DATE),  2975, NULL, 20);
INSERT INTO EMPY VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        CAST('1981-09-28' as DATE), 1250, 1400, 30);
INSERT INTO EMPY VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        CAST('1981-05-01' as DATE),  2850, NULL, 30);
INSERT INTO EMPY VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        CAST('1981-06-09' as DATE),  2450, NULL, 10);
INSERT INTO EMPY VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        CAST('1982-12-09' as DATE), 3000, NULL, 20);
INSERT INTO EMPY VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        CAST('1981-11-17' as DATE), 5000, NULL, 10);
INSERT INTO EMPY VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        CAST('1981-09-08' as DATE),  1500, NULL, 30);
INSERT INTO EMPY VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        CAST('1983-01-12' as DATE), 1100, NULL, 20);
INSERT INTO EMPY VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        CAST('1981-12-03' as DATE),   950, NULL, 30);

INSERT INTO EMPY VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        CAST('1981-12-03' as DATE),  3000, NULL, 20);
INSERT INTO EMPY VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        CAST('1982-01-23' as DATE), 1300, NULL, 10);

#Column is added after to the existing table

       alter table empy add Grade Varchar(10)
#update the data into added columns

       update empy set grade=1 where sal>=3000
       update empy set grade=2 where sal>1500 or sal<3000
       update empy set grade=3 where sal<1500


1)Display the total information of the emps along with Grades in the desc       order.
       A)select * from empy order by grade desc

2)List all the Grade2 and Grade 3 emps.
       A)select * from empy where grade<>1 order by grade

3)List the Empno, Ename, Sal, Dname, Grade, Exp, and Ann Sal 
of emps working for Dept10 or20.
       A)select 
			e.empno, e.ename, e.sal, D.Dname,D.Deptno, E.grade, E.Sal*12 as Anu_sal 
		 from 
			Empy as E 
		 inner join 
			Dept as D 
		 on 
			E.DEPTNO=D.DEPTNO 
		 Where 
			D.DEPTNO<> 30 
		 order by D.DEPTNO, E.grade
             