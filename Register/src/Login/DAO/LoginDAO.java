package Login.DAO;
import java.sql.*;



import Login.Bean.Login;
import register.bean.*;
import register.DAO.*;


public class LoginDAO {
       public String authenticateUser(Login loginBean)
       {
       DoctorBean DB=new DoctorBean();
       String table=DB.getTable();
       
       
       String userName = loginBean.getUserId(); //Keeping user entered values in temporary variables.
       String password = loginBean.getPassword();
       
       Connection con = null;
       Connection con1 = null;
       Statement statement = null;
       Statement statement1 = null;
       ResultSet resultSet = null;
      ResultSet resultSet1 = null;
       
       String userNameDB = "";
       String passwordDB = "";
       String role = "";
     
       
       try
       {
       con = DBConnection.createConnection(); //establishing connection
       statement = con.createStatement();
       
       resultSet = statement.executeQuery("select userId,Password,role from register"); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
       
       while(resultSet.next()) // Until next row is present otherwise it return false
       {
         userNameDB = resultSet.getString("userId"); //fetch the values present in database
         passwordDB = resultSet.getString("Password");
         role=resultSet.getString("role");
         System.out.println("0"+userName);
         System.out.println("0"+password);
         System.out.println("1"+userNameDB);
         
         System.out.println("1"+passwordDB);
         
         
         if(userName.equals(userNameDB) && password.equals(passwordDB) && role.equals("Patient"))
         {
            return "SUCCESS"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
         }
         else if(userName.equals(userNameDB) && password.equals(passwordDB) && role.equals("Doctor"))
         {
            return "SUCCESS1"; ////If the user entered values are already present in database, which means user has already registered so I will return SUCCESS message.
         }
         
       }
       }
       catch(SQLException e)
       {
       e.printStackTrace();
       }
       
       
       
       return "Invalid user credentials"; // Just returning appropriate message otherwise
       
       }

}
