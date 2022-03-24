package com.patient_records.patientportalapi.patient;


import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class PatientController {


//    @RequestMapping("/patients")
//    public List<Patient> getAllPatients(){
//      return Arrays.asList(new Patient(1111111111, "Mr", "'Uvindu'", "", "Adhi", "", "", "Male", "Single", "Employed", "Asian Indian", "'3604 Nandina Dr'", "", "'Flower Mound'", "'TX'", 75022, 0, 1111111111, "primary phone", "'uviadhi@gmail.com'", "'uviadhi@gmail.com'", "work", "yyyy-MM-dd", 25, 817875279, 0),
//              new Patient(222222222, "Mr", "'Uvindu'", "", "Adhi", "", "", "Male", "Single", "Employed", "Asian Indian", "'3604 Nandina Dr'", "", "'Flower Mound'", "'TX'", 75022, 0, 222222222, "primary phone", "'uviadhi@gmail.com'", "'uviadhi@gmail.com'", "work", "1996-12-30", 25, 817875279, 0 ));
//    }
//
//    Patient patient  = new Patient();

    @RequestMapping("/patients/111111111")
    public Patient getPatientInfoHardCode(){
        return new Patient("1111111111", "Mr", "Uvindu", null, "Adhi", null, null, "Male", "Single", "Employed", "Asian Indian", "3604 Nandina Dr", null, "Flower Mound", "TX", 75022, "0", "1111111111", "primary phone", "uviadhi@gmail.com", "uviadhi@gmail.com", "work", null, 25, "111223333");
    }

//    @RequestMapping("/patients/{primary_phone}")
//    public Patient getPatientInfo(@PathVariable String primary_phone){
//        return PatientService.getPatientInfo(primary_phone);
//    }
}
