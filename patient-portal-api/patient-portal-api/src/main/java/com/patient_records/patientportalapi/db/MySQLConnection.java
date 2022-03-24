package com.patient_records.patientportalapi.db;

import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@Component
public class MySQLConnection {
    Connection con = null;

    public Connection getConnection(){

        if(null == con) {

            try {
                //create an instance of the jdbc driver
//Step 2: Loading the drivers
                Class.forName("com.mysql.cj.jdbc.Driver");
//Step 4: Establish a connection using the Connection class object
//				user: Username from which your SQL command prompt can be accessed.
//				password: password from which the SQL command prompt can be accessed.
//				con: It is a reference to the Connection interface.
//				Url : Uniform Resource Locator
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_patient_records", "root", "password");

            } catch (ClassNotFoundException e) {
                // TODO: handle exception
                e.printStackTrace();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

//Step 8: Closing the connections
//			By closing the connection, objects of Statement and ResultSet will be closed automatically.
//			The close() method of the Connection interface is used to close the connection.


        return con;
    }

}

//jdbc:mysql://localhost:3306/?user=root
