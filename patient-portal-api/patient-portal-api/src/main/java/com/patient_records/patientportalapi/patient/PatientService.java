package com.patient_records.patientportalapi.patient;

import com.patient_records.patientportalapi.db.MySQLConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientService {

//    @Autowired
//    MySQLConnection mysqlConnection;
//
//    public static Patient getPatientInfo(String primary_phone) {
//
//        PreparedStatement statement = null;
//        ResultSet rs = null;
//
//        String courceId =null;
//        String name = null;
//        String descrition = null;
//
//        try {
//            statement = mysqlConnection.getConnection().prepareStatement("select * from school.course  where course_id > ?");
//            statement.setString(1, course_id);
//            rs = statement.executeQuery();
//
//            while(rs.next()) {
//                courceId = rs.getString(1);
//                name = rs.getString(2);
//                descrition = rs.getString(3);
//                break;
//            }
//
//
//        } catch (SQLException e) {
//            // TODO: handle exception
//            e.printStackTrace();
//        }
//
//        Patient patient = new Patient(primary_phone,courceId,name,name...);
//
//        return course;
//    }



}
