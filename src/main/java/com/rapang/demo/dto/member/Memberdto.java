package com.rapang.demo.dto.member;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Memberdto {


//    public Memberdto(String year,String month,String days) throws ParseException{
//
//        String birth = year+"/"+month+"/"+days;
//        java.util.Date date = new SimpleDateFormat("yyyy/MM/dd").parse(birth);
//        Date birthDate = new Date(date.getTime());
//        this.birth = birthDate;
//
//    }

   private String r_name;
    private String r_id;
    private String r_pw;
    private String email;
    private String email1;
    private String email2;
    private String email3;
    private int receive;
    private String zip;
    private String address;
    private String phone;
    private String phone1;
    private String phone2;
    private String phone3;
    private int sms;
    private String tel;
    private String tel1;
    private String tel2;
    private String tel3;
    private Date birth;
    private String year;
    private String month;
    private String days;
    private int lunar_solar;
    private int business;

    public String getR_name() {
        return r_name;
    }

    public void setR_name(String r_name) {
        this.r_name = r_name;
    }

    public String getR_id() {
        return r_id;
    }

    public void setR_id(String r_id) {
        this.r_id = r_id;
    }

    public String getR_pw() {
        return r_pw;
    }

    public void setR_pw(String r_pw) {
        this.r_pw = r_pw;
    }

    public String getEmail() {

        return email;
    }

    public void setEmail() {

        this.email = email+email2+email3;
    }

    public String getEmail1() {
        return email1;
    }

    public void setEmail1(String email1) {
        this.email1 = email1;
    }

    public String getEmail2() {
        return email2;
    }

    public void setEmail2(String email2) {
        this.email2 = email2;
    }

    public String getEmail3() {
        return email3;
    }

    public void setEmail3(String email3) {
        this.email3 = email3;
    }

    public int getReceive() {
        return receive;
    }

    public void setReceive(int receive) {
        this.receive = receive;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone(String phone) {

        return phone;
    }

    public void setPhone() {
        this.phone = phone1+"-"+phone2+"-"+phone3;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getPhone3() {
        return phone3;
    }

    public void setPhone3(String phone3) {
        this.phone3 = phone3;
    }

    public int getSms() {
        return sms;
    }

    public void setSms(int sms) {
        this.sms = sms;
    }

    public String getTel() {
        return tel;
    }

    public void setTel() {

        this.tel = tel1+"-"+tel2+"-"+tel3;
    }

    public String getTel1() {
        return tel1;
    }

    public void setTel1(String tel1) {
        this.tel1 = tel1;
    }

    public String getTel2() {
        return tel2;
    }

    public void setTel2(String tel2) {
        this.tel2 = tel2;
    }

    public String getTel3() {
        return tel3;
    }

    public void setTel3(String tel3) {
        this.tel3 = tel3;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth()throws ParseException {
        String birth = year + "/" + month + "/" + days;
        System.out.println(birth);
        java.util.Date date = new SimpleDateFormat("yyyy/MM/dd").parse(birth);
        Date birthDate = new Date(date.getTime());
        System.out.println(birthDate);
        this.birth = birthDate;

    }

    public int getLunar_solar() {
        return lunar_solar;
    }

    public void setLunar_solar(int lunar_solar) {
        this.lunar_solar = lunar_solar;
    }

    public int getBusiness() {
        return business;
    }

    public void setBusiness(int business) {
        this.business = business;
    }
}
