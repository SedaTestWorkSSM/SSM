package com.SedaTestSSM.dao;

import java.util.List;

import com.SedaTestSSM.proj.Company;
import com.SedaTestSSM.proj.CompanyWithBLOBs;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CompanyWithBLOBs record);

    int insertSelective(CompanyWithBLOBs record);

    CompanyWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CompanyWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CompanyWithBLOBs record);

    int updateByPrimaryKey(Company record);
    
    List<CompanyWithBLOBs> findAll();
}