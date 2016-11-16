
function ingresar()
{
	var f=$.ajax({
		url:"nexo.php",
		type:"post",
		data:{
			boton: "ingresar",
			patente: $("#patente").val(),
			porcentaje: $("#porcentaje").val(),
		}});
	//success: alert("GESTIONANDO AUTO");
	//success: swal("Gestionando auto");

	f.done (function(resultado)
		{
			if (resultado=="ingresar")
			{
				swal("Producto ingresado exitosamente", "", "success");
				//alert("Auto Ingresado Exitosamente");
				estacionados();
			}
			else if (resultado=="vacio")
			{
				
				swal("Ingrese un Producto");
				//alert("Ingrese una patente");
			}
			else if (resultado=="rango")
				{
					swal("Porcentaje ingresado fuera de rango (entre 0 y 100%)");
				};
			/*else
			{
				swal("A facturar: $" + resultado, "" ,"success");
				//alert("A facturar: $" + resultado);
				estacionados();
			}*/
			
		});

	//por si quiero imprimir la tabla grilla
	/*f.done (function()
			{
				var d=$.ajax({
				url:"grilla.php",
				type:"get",
				data:{
				}});
				d.done(function(resultado)
					{
						$("#tabla").val(resultado);
					}
				);
			}
		);*/

}


function login()
{
	var f=$.ajax(
		{
			url: "nexo.php",
			type: "post",
			data:
			{
				boton: "login",
				usuario: $("#usuario").val(),
				pass: $("#pass").val()
			}

		}
	);
	f.done (function(resultado)
		{
			
			if (resultado=="vacio")
			{
				swal("Complete los campos");
			}
			if (resultado=="ok")
			{
				window.location.href = "gestion.php";
			}
			else if(resultado=="error")
			{
				swal("Usuario o contraseña inexistentes");
			}
			
		});
}

function salir()
{
	var f=$.ajax(
		{
			url: "nexo.php",
			type: "post",
			data:
			{
				boton: "salir"
			}

		}
	);
	f.done (function(salir)
		{
			if (salir=="salir")
			{
				window.location.href = "index.html";
			}

			
		});
}

function tabla()
{
	var f=$.ajax
	(
		{
			url:"nexo.php",
			type:"post",
			data:
			{
				boton:"tabla"
			}
		}
	);
	f.done
	(
		function(algo) 
		{
			$("#tabla").html(algo);
		}
	);	
}

function tablaUsuarios()
{
	var f=$.ajax
	(
		{
			url:"nexo.php",
			type:"post",
			data:
			{
				boton:"tablaUsuarios"
			}
		}
	);
	f.done
	(
		function(algo) 
		{
			$("#tabla").html(algo);
		}
	);	
}

function estacionados()
{
	var f=$.ajax
	(
		{
			url:"nexo.php",
			type:"post",
			data:
			{
				boton:"estacionados"
			}
		}
	);
	f.done
	(
		function(algo) 
		{
			$("#tabla").html(algo);
		}
	);	
}

function EliminarProducto(id)
{
	var f=$.ajax
	(
		{
			url:"nexo.php",
			type:"post",
			data:
			{
				boton:"eliminarProducto",
				id:id
			}
		}
	);
	f.done
	(
		
		function(algo) 
		{
			swal("Producto eliminado exitosamente", "", "success");
			$("#tabla").html(algo);
			estacionados();
		}
	);	
}

function testAdministrador()
{
	var f=$.ajax
	({}	);

	f.done
	(
		function() 
		{
			$("#usuario").val("administrador");
			$("#pass").val("1");
		}
	);	
}

function testVendedor()
{
	var f=$.ajax
	({}	);

	f.done
	(
		function() 
		{
			$("#usuario").val("vendedor");
			$("#pass").val("1");
		}
	);	
}

function testComprador()
{
	var f=$.ajax
	({}	);

	f.done
	(
		function() 
		{
			$("#usuario").val("comprador");
			$("#pass").val("1");
		}
	);	
}