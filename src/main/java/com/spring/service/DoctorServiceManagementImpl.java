package com.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.entity.DoctorEntity;
import com.spring.error.DoctorNotFoundException;
import com.spring.repository.IDoctorRepository;
import com.spring.vo.DoctorVO;
@Service
public class DoctorServiceManagementImpl implements IDoctorManagementService {
	
	@Autowired
	private IDoctorRepository doctorRepo;

	@Override
	public String registerDoctor(DoctorVO doctorVO) {
		DoctorEntity entity = new DoctorEntity();
		BeanUtils.copyProperties(doctorVO, entity);
		Integer did = doctorRepo.save(entity).getDoctorId();
		return "Doctor register successfully having DoctorId "+did;
	}

	@Override
	public List<DoctorVO> findAllDoctors() {
		List<DoctorEntity> listEntity = doctorRepo.findAll();
		List<DoctorVO> listVO = new ArrayList<>();
		listEntity.forEach(docEntity->{
			DoctorVO docVO = new DoctorVO();
			BeanUtils.copyProperties(docEntity,docVO);
			if(docVO.getDoctorFee() > 500 && docVO.getDoctorFee() < 3000) {
				docVO.setDiscount(10.0);
				docVO.setFinalFee(docVO.getDoctorFee()-(docVO.getDoctorFee()*docVO.getDiscount())/100);
			}
			else if(docVO.getDoctorFee() > 3000 && docVO.getDoctorFee() < 6000) {
				docVO.setDiscount(15.0);
				docVO.setFinalFee(docVO.getDoctorFee()-(docVO.getDoctorFee()*docVO.getDiscount())/100);
			}
			else  {
				docVO.setDiscount(25.0);
				docVO.setFinalFee(docVO.getDoctorFee()-(docVO.getDoctorFee()*docVO.getDiscount())/100);
			}
			listVO.add(docVO);
		});
		return listVO;
	}

	@Override
	public DoctorEntity findDoctorById(int id) {
		DoctorEntity doctor = doctorRepo.findById(id)
				              .orElseThrow(()
				              ->new DoctorNotFoundException("Doctor with the Id num not found"));
		return doctor;
	}

	@Override
	public String updateDoctor(DoctorVO doctorVO,Integer id) {
		DoctorEntity doctorEntity = findDoctorById(id);
		BeanUtils.copyProperties(doctorVO,doctorEntity);
		 doctorRepo.save(doctorEntity).getDoctorId();
		return "Doctor Updated having Doctor Id "+id;
	}

	@Override
	public String removeDoctor(Integer id) {
		DoctorEntity doctorEntity = findDoctorById(id);
		if(doctorEntity != null) {
		doctorRepo.deleteById(id);
		return "Doctor removed having Doctor ID "+id;
		}
		else 
			return "Doctor not found having Doctor Id "+id;
	}

}
