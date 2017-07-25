package com.SedaTestSSM.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SedaTestSSM.proj.Company;
import com.SedaTestSSM.service.ICompanyService;

@Controller
@RequestMapping("/user")
public class CompanyContorller {
	@Resource
	private ICompanyService companyService;
	@RequestMapping("/Audit")
	public String Audit(HttpServletRequest request) {
		List<Company> company =  companyService.findAll();
		request.setAttribute("company", company);
			return "Audit";
	}
}
