SELECT name FROM ingredients
inner join vendors on ingredients.vendorid = vendors.vendorid 
&& vendors.companyname = 'Veggies_R_Us';

SELECT name FROM ingredients
inner join vendors on ingredients.vendorid = vendors.vendorid 
&& (vendors.companyname = 'Veggies_R_Us'
or vendors.companyname = 'Spring Water Supply');


SELECT avg(unitprice) FROM ingredients
inner join vendors on ingredients.vendorid = vendors.vendorid 
&& vendors.companyname = 'Veggies_R_Us';


select name, inventory from ingredients
where inventory<(select avg(inventory) from ingredients);


select companyname from vendors
where 
  vendors.referredby = (Select vendorid from vendors where companyname='Veggies_R_Us') 
  and vendorid in ( 
	select vendors.vendorid from vendors
    inner join ingredients on 
        vendors.vendorid = ingredents.vendorid
        and ingredients.foodgroup ='Milk'
 );
 