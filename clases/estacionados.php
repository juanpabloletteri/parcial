<?php
require_once("clases/AccesoDatos.php");

class estacionados
{
	public $patente;
	public $ingreso;

	public static function TraerTodosLosEstacionados()
	{
		$objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
		$consulta =$objetoAccesoDato->RetornarConsulta("select * from autos");
		$consulta->execute();			
		$arrHistorial= $consulta->fetchAll(PDO::FETCH_CLASS, "estacionados");	
		return $arrHistorial;
	}

	public static function ConstruirTabla()
	{
		$ArrayDePersonas = estacionados::TraerTodosLosEstacionados();

		$tabla= "<table class='table table-hover table-responsive'>
				<thead>
					<tr>
						<th>  Codigo   </th>
						<th>  Descripcion   </th>
						<th>  Porcentaje   </th>
						<th>  Accion   </th>				
					</tr> 
				</thead>";   	

			foreach ($ArrayDePersonas as $personaAux)
			{
				if ($_SESSION['admin']!=2)
				{
					$botonBorrar="<input type='button' class='round medium orange button' value='Eliminar' id='btnEliminar' onclick='EliminarProducto($personaAux->id)'";
				}
				else
				{
					$botonBorrar="";
				}
				$tabla.= " 	<tr>
							<td>".$personaAux->id."</td>
							<td>".$personaAux->patente."</td>
							<td>".$personaAux->porcentaje."</td>
							<td>".$botonBorrar."</td>
                                
                         
						</tr>";
			}	
		$tabla.= "</table>";

		return $tabla;
	}
}


?>