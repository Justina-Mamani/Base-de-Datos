select nombre, usuario from bookstore.empleado
inner join bookstore.usuario on empleado.idempleado=usuario.idempleado;



select email as correo from bookstore.empleado
inner join bookstore.usuario on empleado.idempleado=usuario.idempleado 
&& usuario.activo=1;



Select count(*) , autor
from bookstore.publicacion
where autor='Eric G. Coronel Castillo';



Select sum(precio) , nombre
from bookstore.empleado
inner join bookstore.venta on empleado.idempleado=venta.idempleado
&& empleado.nombre='EMILIO';