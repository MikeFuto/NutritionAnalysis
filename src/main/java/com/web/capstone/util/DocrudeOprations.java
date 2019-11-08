package com.web.capstone.util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DocrudeOprations {
    
 public static void main(String args[])throws Exception{  
selectRecordsFromTable();
 } 
 
 private static void selectRecordsFromTable() throws SQLException {
Connection dbConnection = null;
PreparedStatement preparedStatement = null;
  //String insert="INSERT INTO users VALUES ('5', 'John', 'Ogolla', '', 'Nairobi', '6589586587', 'Hellow My name is ogolla','')";
  //Statement stmt = null;
//stmt = dbConnection.createStatement();
//stmt.executeUpdate(insert);
String selectSQL = "SELECT * FROM users WHERE id = 3";	
try {
dbConnection = DbConnection.getConnection();
preparedStatement = dbConnection.prepareStatement(selectSQL);
//preparedStatement.setInt(3, 16);	
// execute select SQL stetement
ResultSet rs = preparedStatement.executeQuery();

while (rs.next()) {	 
  int id  = rs.getInt("id");          
          String email = rs.getString("email");
          String fname = rs.getString("fname");
          String lname = rs.getString("lname");
          //Display values
          System.out.print("\nID: " + id +"\nEmail: " + email+ "\nfirst name: " + fname+"\nlast Name: " + lname);          
       	}

} catch (SQLException e) {

System.out.println(e.getMessage());

} finally {

if (preparedStatement != null) {
preparedStatement.close();
}

if (dbConnection != null) {
dbConnection.close();
}

}

}
}