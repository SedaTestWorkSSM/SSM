package com.SedaTestSSM.proj;


public class CompanyWithBLOBs extends Company {
    private String companyTxt;

    private String companyStxt;

    private String companyLadd;

    private String companyAdd;

    private String companyArea;

    private String companyType;

    public String getCompanyTxt() {
        return companyTxt;
    }

    public void setCompanyTxt(String companyTxt) {
        this.companyTxt = companyTxt == null ? null : companyTxt.trim();
    }

    public String getCompanyStxt() {
        return companyStxt;
    }

    public void setCompanyStxt(String companyStxt) {
        this.companyStxt = companyStxt == null ? null : companyStxt.trim();
    }

    public String getCompanyLadd() {
        return companyLadd;
    }

    public void setCompanyLadd(String companyLadd) {
        this.companyLadd = companyLadd == null ? null : companyLadd.trim();
    }

    public String getCompanyAdd() {
        return companyAdd;
    }

    public void setCompanyAdd(String companyAdd) {
        this.companyAdd = companyAdd == null ? null : companyAdd.trim();
    }

    public String getCompanyArea() {
        return companyArea;
    }

    public void setCompanyArea(String companyArea) {
        this.companyArea = companyArea == null ? null : companyArea.trim();
    }

    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType == null ? null : companyType.trim();
    }

}