package com.patient_records.patientportalapi.patient;

import java.time.LocalDate;

public class Patient {
    private String primary_phone;
    private String title;
    private String f_name;
    private String n_name;
    private String l_name;
    private String m_name;
    private String suffix;
//--this needs to be modified
    private String gender;
//--this needs to be modified
    private String marital_status;
//--this needs to be modified
    private String employment_status;
//--this needs to be modified
    private String race;
    private String address_line_1;
    private String address_line_2;
    private String city;
    private String state;
    private int zip_code;
    private String secondary_phone;
    private String mobile_phone;
    //--this needs to be modified
    private String contact_method;
    private String home_email;
    private String work_email;
//--this needs to be modified
    private String communicate_email;
    private String dob;
    private int age;
    private String ssn;




    public Patient(String primary_phone, String title, String f_name, String n_name, String l_name, String m_name, String suffix, String gender, String marital_status, String employment_status, String race, String address_line_1, String address_line_2, String city, String state, int zip_code, String secondary_phone, String mobile_phone, String contact_method, String home_email, String work_email, String communicate_email, String dob, int age, String ssn) {
        this.primary_phone = primary_phone;
        this.title = title;
        this.f_name = f_name;
        this.n_name = n_name;
        this.l_name = l_name;
        this.m_name = m_name;
        this.suffix = suffix;
        this.gender = gender;
        this.marital_status = marital_status;
        this.employment_status = employment_status;
        this.race = race;
        this.address_line_1 = address_line_1;
        this.address_line_2 = address_line_2;
        this.city = city;
        this.state = state;
        this.zip_code = zip_code;
        this.secondary_phone = secondary_phone;
        this.mobile_phone = mobile_phone;
        this.contact_method = contact_method;
        this.home_email = home_email;
        this.work_email = work_email;
        this.communicate_email = communicate_email;
        this.dob = dob;
        this.age = age;
        this.ssn = ssn;

    }

    public Patient() {

    }

    public String getPrimary_phone() {
        return primary_phone;
    }

    public void setPrimary_phone(String primary_phone) {
        this.primary_phone = primary_phone;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getN_name() {
        return n_name;
    }

    public void setN_name(String n_name) {
        this.n_name = n_name;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMarital_status() {
        return marital_status;
    }

    public void setMarital_status(String marital_status) {
        this.marital_status = marital_status;
    }

    public String getEmployment_status() {
        return employment_status;
    }

    public void setEmployment_status(String employment_status) {
        this.employment_status = employment_status;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getAddress_line_1() {
        return address_line_1;
    }

    public void setAddress_line_1(String address_line_1) {
        this.address_line_1 = address_line_1;
    }

    public String getAddress_line_2() {
        return address_line_2;
    }

    public void setAddress_line_2(String address_line_2) {
        this.address_line_2 = address_line_2;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZip_code() {
        return zip_code;
    }

    public void setZip_code(int zip_code) {
        this.zip_code = zip_code;
    }

    public String getSecondary_phone() {
        return secondary_phone;
    }

    public void setSecondary_phone(String secondary_phone) {
        this.secondary_phone = secondary_phone;
    }

    public String getMobile_phone() {
        return mobile_phone;
    }

    public void setMobile_phone(String mobile_phone) {
        this.mobile_phone = mobile_phone;
    }

    public String getContact_method() {
        return contact_method;
    }

    public void setContact_method(String contact_method) {
        this.contact_method = contact_method;
    }

    public String getHome_email() {
        return home_email;
    }

    public void setHome_email(String home_email) {
        this.home_email = home_email;
    }

    public String getWork_email() {
        return work_email;
    }

    public void setWork_email(String work_email) {
        this.work_email = work_email;
    }

    public String getCommunicate_email() {
        return communicate_email;
    }

    public void setCommunicate_email(String communicate_email) {
        this.communicate_email = communicate_email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSsn() {
        return ssn;
    }

    public void setSsn(String ssn) {
        this.ssn = ssn;
    }


}
