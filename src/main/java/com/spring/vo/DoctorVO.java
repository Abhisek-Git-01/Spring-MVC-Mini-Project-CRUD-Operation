package com.spring.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class DoctorVO {

	private Integer doctorId;
	
	@NonNull
	private String doctorName;

	@NonNull
	private String doctorAddress="Hyderabad";
	
	@NonNull
	private Double doctorFee;
	
	
	private Double finalFee;
	
	
	private Double discount;
	
	
}
