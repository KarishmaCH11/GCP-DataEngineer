

create table store_details(Item_Id int , Store1 INt, Store2 Int, Store3 int)


Create Table Product_Details(Prod_Id Int Not null, Product_Name Varchar(15), Availbility int, Price int, DOM Date)







Insert into Product_Details Values(1, 'Fanta', 200, 50, '08 Jan 2022'), 
								  (2, 'Sprite', 100, 40, '01 Feb 2022'),
								  (3, 'Thumpsup', 180, 20, '06 Jan 2022'),
								  (4, '7UP', 110, 50, '08 Dec 2021')


Insert into store_details Values(1, 60, 90, 50),
								  (2, 30, 40, 30),
								  (3, 70, 60, 50),
								  (4, 50, 40, 20)




;




select p.prod_id, s.Store1,s.Store2, s.store3, p.Availbility
From Product_Details AS p 
INNER JOIN
store_details As s
On p.Prod_Id = s.Item_Id
where p.Availbility > 150
GROUP BY p.prod_id, s.Store1,s.Store2, s.store3, p.Availbility
having s.Store2 > 70
order by p.Prod_Id






