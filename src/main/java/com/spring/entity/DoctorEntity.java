package com.spring.entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.SQLRestriction;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class DoctorEntity {

	@SequenceGenerator(name="gen1",sequenceName="Hospital_Sequence",allocationSize=1,initialValue=1000)
	@GeneratedValue(generator="gen1", strategy=GenerationType.SEQUENCE)
	@Id
	private Integer doctorId;
	@Column(length=30)
	@NonNull
	private String doctorName;
	@Column(length=30)
	@NonNull
	private String doctorAddress;
	@Column(length=30)
	@NonNull
	private Double doctorFee;
	
	//MetaData properties
	@Version
	private Integer updateCount;
	@CreatedBy
	private String createdBy = System.getProperty("user.name");
	@CreationTimestamp
	@Column(updatable=false, insertable=true)
	private LocalDateTime creationTime;
	@UpdateTimestamp
	@Column(updatable=true, insertable=false)
	private LocalDateTime updateTime;
	@LastModifiedBy
	@Column(insertable=false)
	private String updatedBy=System.getProperty("user.name");
	@Column(length=30)
    private String status="ACTIVE";
	
	
}
