package com.SedaTestSSM.proj;

import java.math.BigDecimal;
import java.util.Date;

public class Company {
    private Integer id;

    private String userId;

    private String userName;

    private String userPhone;

    private String userFax;

    private String userD;

    private String userP;

    private String userEmail;

    private String companyId;

    private String companyAname;

    private String companyCname;

    private String companyEname;

    private String companyRname;

    private Date companyDate;

    private Integer companyE;

    private BigDecimal companyC;

    private Integer companyPhone;

    private Integer companyFax;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserFax() {
        return userFax;
    }

    public void setUserFax(String userFax) {
        this.userFax = userFax == null ? null : userFax.trim();
    }

    public String getUserD() {
        return userD;
    }

    public void setUserD(String userD) {
        this.userD = userD == null ? null : userD.trim();
    }

    public String getUserP() {
        return userP;
    }

    public void setUserP(String userP) {
        this.userP = userP == null ? null : userP.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId == null ? null : companyId.trim();
    }

    public String getCompanyAname() {
        return companyAname;
    }

    public void setCompanyAname(String companyAname) {
        this.companyAname = companyAname == null ? null : companyAname.trim();
    }

    public String getCompanyCname() {
        return companyCname;
    }

    public void setCompanyCname(String companyCname) {
        this.companyCname = companyCname == null ? null : companyCname.trim();
    }

    public String getCompanyEname() {
        return companyEname;
    }

    public void setCompanyEname(String companyEname) {
        this.companyEname = companyEname == null ? null : companyEname.trim();
    }

    public String getCompanyRname() {
        return companyRname;
    }

    public void setCompanyRname(String companyRname) {
        this.companyRname = companyRname == null ? null : companyRname.trim();
    }

    public Date getCompanyDate() {
        return companyDate;
    }

    public void setCompanyDate(Date companyDate) {
        this.companyDate = companyDate;
    }

    public Integer getCompanyE() {
        return companyE;
    }

    public void setCompanyE(Integer companyE) {
        this.companyE = companyE;
    }

    public BigDecimal getCompanyC() {
        return companyC;
    }

    public void setCompanyC(BigDecimal companyC) {
        this.companyC = companyC;
    }

    public Integer getCompanyPhone() {
        return companyPhone;
    }

    public void setCompanyPhone(Integer companyPhone) {
        this.companyPhone = companyPhone;
    }

    public Integer getCompanyFax() {
        return companyFax;
    }

    public void setCompanyFax(Integer companyFax) {
        this.companyFax = companyFax;
    }
}