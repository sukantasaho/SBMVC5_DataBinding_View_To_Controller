package com.main.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.main.conversion.Converter;
import com.main.dbObjects.EmployeeInfoDBO;
import com.main.dto.EmployeeRegisterDTO;
import com.main.dto.EmployeeResponseDTO;
import com.main.repository.IEmployeeInfoRepository;

@Service
public class EmployeeServiceImp implements IEmployeeInfoService 
{
    @Autowired
	private IEmployeeInfoRepository empRepository;
    
	
	@Override
	public String registerEmployee(EmployeeRegisterDTO dto) 
	{
		  EmployeeInfoDBO dbo = Converter.convertDTOToDBO(dto);
		  int id = empRepository.save(dbo).getId();
		  
		return "Record saved successfully wih refference id-"+id+" (For Future Operation)";
	}

	@Override
	public List<EmployeeResponseDTO> getAllEmployees() 
	{
	        List<EmployeeInfoDBO> dboList = empRepository.getAllEmployees(); 
	        
		return Converter.convertDBOListToDTOList(dboList);
	}

	@Override
	public String deleteEmployeeById(Integer id)
	{
		String status = null;
		Optional<EmployeeInfoDBO> opt = empRepository.findById(id);
		if(opt.isPresent())
		{
			EmployeeInfoDBO dbo = opt.get();
			dbo.setRecordStatus("Deactivated");
			empRepository.save(dbo);
			status = "success";
			
		}
		else
		{
			status = "failed";
		}
		return status;
	}

}
