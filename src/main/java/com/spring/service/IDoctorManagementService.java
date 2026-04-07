package com.spring.service;

import java.util.List;

import com.spring.entity.DoctorEntity;
import com.spring.vo.DoctorVO;

public interface IDoctorManagementService {

	public String registerDoctor(DoctorVO doctorVO);
	public List<DoctorVO> findAllDoctors();
	public DoctorEntity findDoctorById(int id);
	public String updateDoctor(DoctorVO vo,Integer id);
	public String removeDoctor(Integer id);
}
