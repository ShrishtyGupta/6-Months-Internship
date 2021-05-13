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
public class PrimAcc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "pacc_id")
    private int paccId;
   @Column(length = 10, name = "pacc_bal")
    private int paccBal;
    @ManyToOne
    private User pacct;

    @Column(name="pacc_status")
    private boolean paccStatus;

    public PrimAcc(int paccId, int paccBal, User pacct, boolean paccStatus) {
        this.paccId = paccId;
        this.paccBal = paccBal;
        this.pacct = pacct;
        this.paccStatus = paccStatus;
    }

    public PrimAcc(int paccBal, User pacct, boolean paccStatus) {
        this.paccBal = paccBal;
        this.pacct = pacct;
        this.paccStatus = paccStatus;
    }

    public PrimAcc() {
    }

    public int getPaccId() {
        return paccId;
    }

    public void setPaccId(int paccId) {
        this.paccId = paccId;
    }

    public int getPaccBal() {
        return paccBal;
    }

    public void setPaccBal(int paccBal) {
        this.paccBal = paccBal;
    }

    public User getPacct() {
        return pacct;
    }

    public void setPacct(User pacct) {
        this.pacct = pacct;
    }

    public boolean isPaccStatus() {
        return paccStatus;
    }

    public void setPaccStatus(boolean paccStatus) {
        this.paccStatus = paccStatus;
    }

    @Override
    public String toString() {
        return "PrimAcc{" + "paccId=" + paccId + ", paccBal=" + paccBal + ", pacct=" + pacct + ", paccStatus=" + paccStatus + '}';
    }

    

   

    

    
   
    
    
    
}
