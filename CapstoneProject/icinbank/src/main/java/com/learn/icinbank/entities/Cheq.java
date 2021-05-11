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
public class Cheq {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10, name = "cheq_id")
    private int cheqId;
   @Column(name="cheq_status")
    private boolean cheqStatus;
    @ManyToOne
    private User cheqt;

    public Cheq(int cheqId, boolean cheqStatus, User cheqt) {
        this.cheqId = cheqId;
        this.cheqStatus = cheqStatus;
        this.cheqt = cheqt;
    }

    public Cheq(boolean cheqStatus, User cheqt) {
        this.cheqStatus = cheqStatus;
        this.cheqt = cheqt;
    }

    public int getCheqId() {
        return cheqId;
    }

    public void setCheqId(int cheqId) {
        this.cheqId = cheqId;
    }

    public boolean isCheqStatus() {
        return cheqStatus;
    }

    public void setCheqStatus(boolean cheqStatus) {
        this.cheqStatus = cheqStatus;
    }

    public User getCheqt() {
        return cheqt;
    }

    public void setCheqt(User cheqt) {
        this.cheqt = cheqt;
    }

    @Override
    public String toString() {
        return "Cheq{" + "cheqId=" + cheqId + ", cheqStatus=" + cheqStatus + ", cheqt=" + cheqt + '}';
    }

    

    
    
    
    
}
