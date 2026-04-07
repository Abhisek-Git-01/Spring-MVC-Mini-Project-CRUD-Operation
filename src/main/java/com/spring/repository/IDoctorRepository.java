package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.entity.DoctorEntity;

public interface IDoctorRepository extends JpaRepository<DoctorEntity, Integer> {

	
}
