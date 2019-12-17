package com.henanhist.domain;

public class Product {
    private int pid;
    private String pname;
    private int pprice;
    private int pinventory;
    private String date;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getPprice() {
        return pprice;
    }

    public void setPprice(int pprice) {
        this.pprice = pprice;
    }

    public int getPinventory() {
        return pinventory;
    }

    public void setPinventory(int pinventory) {
        this.pinventory = pinventory;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pprice=" + pprice +
                ", pinventory=" + pinventory +
                ", date='" + date + '\'' +
                '}';
    }
}
