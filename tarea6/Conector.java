package cuarentena;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cuarentena.Conector;

public class Conector {

	// Atributos de la clase
		private static Connection con;
		private static Conector INSTANCE = null;
		
		//Constructor
		private Conector() {
			
		}
		
		//Crear instancia
		private synchronized static void crearInstancia() {
			if (INSTANCE == null){
				INSTANCE = new Conector();
				crearConexion();
			}
		}
		
		//Obtener instancia
		public static Conector getInstancia () {
			if (INSTANCE == null){
				crearInstancia();
			}
			return INSTANCE;
		}
		
		
		//Crear conexion
		private static void crearConexion() {
			String host = "127.0.0.1";
			String user = "Justina";
			String password = "29septiembre2000*";
			String dataBase = "cuarentena";
			try {
				//Importando la libreria de conexion de mysql
				Class.forName("com.mysql.jdbc.Driver");
				
				String urlConexion = "jdbc:mysql://"+host+"/"
				+dataBase+"?user="+user+"&password="+password;
				con = DriverManager.getConnection(urlConexion);
				//System.out.println("Lo lograste");
				
			}catch (Exception e) {
				//System.out.println("Error al conectar a la base de datos");
				//System.out.println(e);
			}
		}
		
		public ArrayList<String> getPacientes() throws SQLException {
			ArrayList<String> listaPacientes = new ArrayList<String>();
			PreparedStatement ps = (PreparedStatement) 
					con.prepareStatement("select * from paciente\r\n" + 
					"inner join persona on paciente.personaID=persona.CI;");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				listaPacientes.add(rs.getString("nombres"));
			}
			rs.close();
			return listaPacientes;
		}
		
		
		public ArrayList<String> getDoctores() throws SQLException {
			ArrayList<String> listaDoctores = new ArrayList<String>();
			PreparedStatement ps = (PreparedStatement) 
					con.prepareStatement("select nombres, nro from doctor\r\n" + 
							"inner join persona on doctor.personaID=persona.CI \r\n" + 
							"inner join consultorio on doctor.consultorioID=consultorio.ID;");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				listaDoctores.add(rs.getString("nombres"));
				listaDoctores.add(rs.getString("nro"));
			}
			rs.close();
			return listaDoctores;
		}
	
}
