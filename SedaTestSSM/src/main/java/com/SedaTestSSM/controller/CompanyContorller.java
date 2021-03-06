package com.SedaTestSSM.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;





















import com.SedaTestSSM.proj.CompanyWithBLOBs;
import com.SedaTestSSM.service.ICompanyService;


@Controller
@RequestMapping("/user")
public class CompanyContorller {
	@Resource
	private ICompanyService companyService;


	//列出資料表
	@RequestMapping("/Audit")
	public String Audit(HttpServletRequest request) {
		List<CompanyWithBLOBs> company =  companyService.findAll();
		request.setAttribute("addcompany", company);
			return "Audit";
	}
	//資料表詳細顯示
	@RequestMapping("/showCompany")
	public String showCompany(HttpServletRequest request, Model model) {
		int userId = Integer.parseInt(request.getParameter("id"));
		CompanyWithBLOBs user = this.companyService.getUserById(userId);
		model.addAttribute("showCompany", user);
			return "showCompany";
	}
	@RequestMapping("/ExcelUtil")
	public String Maintain() {

			return "ExcelUtil";
	}
 }
