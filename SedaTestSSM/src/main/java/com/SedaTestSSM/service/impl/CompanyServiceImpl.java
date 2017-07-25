package com.SedaTestSSM.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.SedaTestSSM.dao.CompanyMapper;
import com.SedaTestSSM.proj.Company;
import com.SedaTestSSM.service.ICompanyService;

@Service("ICompanyService")  
public class CompanyServiceImpl implements ICompanyService{
	@Resource
	private CompanyMapper companyMapper;
    public List<Company> findAll() {
		// TODO Auto-generated method stub
		return this.companyMapper.findAll();
	}
}
