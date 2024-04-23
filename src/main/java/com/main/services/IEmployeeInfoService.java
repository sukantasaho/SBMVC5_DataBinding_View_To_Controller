package com.main.services;

import java.util.List;
import java.util.Optional;
import com.main.dto.EmployeeRegisterDTO;
import com.main.dto.EmployeeResponseDTO;

public interface IEmployeeInfoService {

	public String registerEmployee(EmployeeRegisterDTO dto);
	public List<EmployeeResponseDTO> getAllEmployees();
	public String deleteEmployeeById(Integer id);
}
