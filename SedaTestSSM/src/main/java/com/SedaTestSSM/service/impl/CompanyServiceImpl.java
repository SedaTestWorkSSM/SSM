package com.SedaTestSSM.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.SedaTestSSM.dao.CompanyMapper;
import com.SedaTestSSM.proj.CompanyWithBLOBs;
import com.SedaTestSSM.service.ICompanyService;

@Service("ICompanyService")  
public class CompanyServiceImpl implements ICompanyService{
	@Resource
	private CompanyMapper companyMapper;
    public List<CompanyWithBLOBs> findAll() {
		// TODO Auto-generated method stub
    	List<CompanyWithBLOBs> findAll = companyMapper.findAll();  
        return findAll;  
	}
	@Override
	public CompanyWithBLOBs getUserById(int Id) {
		// TODO Auto-generated method stub
        return this.companyMapper.selectByPrimaryKey(Id);  
	}

}
