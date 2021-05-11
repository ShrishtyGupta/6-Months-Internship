/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.learn.icinbank.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Acc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "acc_id")
    private int accId;
   @Column(length = 10, name = "acc_bal")
    private int accBal;
    @ManyToOne
    private User acct;

    @Column(name="acc_status")
    private boolean accStatus;

    public Acc(int accId, int accBal, User acct, boolean accStatus) {
        this.accId = accId;
        this.accBal = accBal;
        this.acct = acct;
        this.accStatus = accStatus;
    }

    public Acc(int accBal, User acct, boolean accStatus) {
        this.accBal = accBal;
        this.acct = acct;
        this.accStatus = accStatus;
    }

    public Acc() {
    }

    public int getAccId() {
        return accId;
    }

    public void setAccId(int accId) {
        this.accId = accId;
    }

    public int getAccBal() {
        return accBal;
    }

    public void setAccBal(int accBal) {
        this.accBal = accBal;
    }

    public User getAcct() {
        return acct;
    }

    public void setAcct(User acct) {
        this.acct = acct;
    }

    public boolean isAccStatus() {
        return accStatus;
    }

    public void setAccStatus(boolean accStatus) {
        this.accStatus = accStatus;
    }

    @Override
    public String toString() {
        return "Acc{" + "accId=" + accId + ", accBal=" + accBal + ", acct=" + acct + ", accStatus=" + accStatus + '}';
    }
   
    
    
    
}
