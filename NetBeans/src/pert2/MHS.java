/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pert2;

/**
 *
 * @author User
 */
public class MHS {
    private String nim,nama;
    private float uts, uas;

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public float getUts() {
        return uts;
    }

    public void setUts(float uts) {
        this.uts = uts;
    }

    public float getUas() {
        return uas;
    }

    public void setUas(float uas) {
        this.uas = uas;
    }
    private double NilAkhir;
    private String Grade;
   
    public double getNilAkhir(){
        NilAkhir=(uts + uas)/2;
        return NilAkhir;
    }
    
    public String getGrade(){
        if (NilAkhir<50)
            Grade="E";
        else if (NilAkhir<60)
            Grade="D";
        else if (NilAkhir<70)
            Grade="C";
        else if (NilAkhir<80)
            Grade="B";
        else
            Grade="A";
        return Grade;
    }

   
}
