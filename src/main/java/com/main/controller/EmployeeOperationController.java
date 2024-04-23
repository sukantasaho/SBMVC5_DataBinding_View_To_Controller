package com.main.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.main.dto.EmployeeRegisterDTO;
import com.main.dto.EmployeeResponseDTO;
import com.main.services.IEmployeeInfoService;

@Controller
@RequestMapping("/employeeManagementSystem")
public class EmployeeOperationController 
{
	
	@Autowired
	private IEmployeeInfoService empService;
	
    @GetMapping("/getForm")
	public String displayEmployeeRegisterForm()
	{ 
    	
		return "register_form";
	}
    
    @PostMapping("/register")
    public String registerEmployee(Map<String, Object> map, @ModelAttribute("emp1") EmployeeRegisterDTO emp)
    {	
    	if(emp!= null)
    	{
    		  String response = empService.registerEmployee(emp);
    		  map.put("res", response);
    	}
    	return "success_page";
    }
    @GetMapping("/getAllEmployees")
    public String getAllEmployees(Map<String, Object> map)
    {
    	 List<EmployeeResponseDTO> dtoList = empService.getAllEmployees();
    	 map.put("resList", dtoList);
    	 
    	return "response_page";
    }
    @GetMapping("/delete/{id}")
    public String deleteEmployee(Map<String, Object> map, @PathVariable("id")Integer id)
    {
    	   String status = empService.deleteEmployeeById(id);
    	   String response = null;
    	   if(status.equals("success"))
    	   {   
    		   response = "Record deleted successfully with refference id-"+id;
    		   map.put("res", response);
    		   return "success_page";
    	   }
    	   
    		   response = "Record deletion failure with the reffrence id-"+id;
    		   map.put("res", response);
    	   
    	   
    	return "failure_page";
    }
    
}
