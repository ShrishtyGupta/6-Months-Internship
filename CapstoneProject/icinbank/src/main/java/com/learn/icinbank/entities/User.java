/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.learn.icinbank.entities;

import javax.persistence.Column;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "user_id")
    private int userId;
    @Column(length = 100, name = "user_name")
    private String userName;
    @Column(length = 100, name = "user_email")
    private String userEmail;
    @Column(length = 100, name = "user_password")
    private String userPassword;
    @Column(length = 12, name = "user_phone")
    private String userPhone;
    
    @Column(length = 1500, name = "user_address")
    private String userAddress;
    
    @Column(name="user_type")
    private String userType;
    @Column(name="user_status")
    private boolean userStatus;
    @OneToMany(mappedBy="cheqt")
    private List<Cheq> cheqs = new ArrayList<>();
      @OneToMany(mappedBy="acct")
    private List<Acc> accs = new ArrayList<>();
      @OneToMany(mappedBy="transt")
    private List<Trans> transs = new ArrayList<>();

    public User( String userName, String userEmail, String userPassword, String userPhone, String userAddress, String userType, boolean userStatus) {
        
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userType = userType;
        this.userStatus = userStatus;
    }

    
    public User(int userId, String userName, String userEmail, String userPassword, String userPhone, String userAddress, String userType, boolean userStatus, List<Cheq> cheqs, List<Acc>accs, List<Trans> transs) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userType = userType;
        this.userStatus = userStatus;
        this.cheqs = cheqs;
        this.accs=accs;
        this.transs=transs;
        
       
        
        
    }

    public User(String userName, String userEmail, String userPassword, String userPhone, String userAddress, String userType,boolean userStatus,List<Cheq> cheqs, List<Acc>accs, List<Trans> transs) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        this.userType = userType;
        this.userStatus = userStatus;
        this.cheqs = cheqs;
        this.accs=accs;
        this.transs=transs;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public boolean isUserStatus() {
        return userStatus;
    }

    public void setUserStatus(boolean userStatus) {
        this.userStatus = userStatus;
    }

    public List<Cheq> getCheqs() {
        return cheqs;
    }

    public void setChecks(List<Cheq> cheqs) {
        this.cheqs = cheqs;
    }

    public List<Acc> getAccs() {
        return accs;
    }

    public void setAccs(List<Acc> accs) {
        this.accs = accs;
    }

    public List<Trans> getTranss() {
        return transs;
    }

    public void setTranss(List<Trans> transs) {
        this.transs = transs;
    }

   

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userAddress=" + userAddress + ", userType=" + userType + ", userStatus=" + userStatus +  '}';
    }
    
        
    
}
