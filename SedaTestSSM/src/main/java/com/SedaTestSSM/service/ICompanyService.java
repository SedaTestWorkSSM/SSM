package com.SedaTestSSM.service;

import java.util.List;



import com.SedaTestSSM.proj.CompanyWithBLOBs;
public interface ICompanyService {
	List<CompanyWithBLOBs> findAll();
    public CompanyWithBLOBs getUserById(int Id);  
}
