package cuarentena;

import java.sql.SQLException;
import java.util.ArrayList;

import cuarentena.Conector;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Conector instancia = Conector.getInstancia();
		try {
			ArrayList <String> listNombres = instancia.getPacientes();
			System.out.println("NOMBRES DE LOS PACIENTES");
			for(String nombres :listNombres) {
				System.out.println(nombres);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		
		try {
			ArrayList <String> listNombres = instancia.getDoctores();
			System.out.println("\nNOMBRES Y CONSULTORIOS DE LOS DOCTORES");
			for(String doctores :listNombres) {
				System.out.println(doctores);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}

	}

}
