/**************************************************************************************************
* David José de Jesús López Chan	       													      *
* Sistema: Nómina																	    		  *
* Objetivo: Creación de Usuarios y Agregarle permisos correspondientes.		                      *																			  
* ------------------------------------------------------------------------------------------------*
*																						          *
* Versión   Fecha        Usuario            Descripción									          *
* -------   ----------   ------------------ ------------------------------------------- ----------*
*  1.0      14/11/2022   David López	    Creación de Usuarios: dlopez y sistemas               *
*  											y se otorgan los permisos							  *
**************************************************************************************************/
/*Creación de los Usuarios*/
use mysql;
CREATE USER 'dlopez@localhost' IDENTIFIED BY '12Dlopez12'; 
CREATE USER 'sistemas@localhost' IDENTIFIED BY '12Sistemas12';

/*Otorgando los permisos*/
use mysql;
GRANT SELECT ON *.* TO 'dlopez@localhost';						/*Otorgandole el permiso de sólo lectura al user dlopez*/
GRANT SELECT, UPDATE, INSERT ON *.* TO 'sistemas@localhost';	/*Otorgandole el permiso de lectura, actualización e inserción al user sistemas*/

