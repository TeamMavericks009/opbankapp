package com.opbank.app.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dto.FundTransferDto;
import com.opbank.app.entity.LinkedPayee;
import com.opbank.app.repository.PayeeRepository;

@Service
public class FundTransferServiceImpl implements FundTransferService {
	
	@Autowired
	PayeeRepository payeeRepo;

	@Override
	public FundTransferDto getPayee(String payeeName) {
		payeeRepo.findByPayeeName(payeeName);
		return null;
	}

	@Override
	public boolean savePayee(FundTransferDto fundsDto) {
		LinkedPayee payeeObj = new LinkedPayee();
		if(fundsDto != null) {
		payeeObj.setPayeeName(payeeObj.getPayeeName());
		payeeObj.setBsb(payeeObj.getBsb());
		payeeObj.setPayeeBankName(payeeObj.getPayeeBankName());
		payeeObj.setPayeeAccount_id(payeeObj.getPayeeAccount_id());
		LinkedPayee savedPayee = payeeRepo.save(payeeObj);
		if(savedPayee !=null) 
			return true;
		}
		return false;
	}

	@Override
	public List<FundTransferDto> getAllPayees(long userId) {
		List<LinkedPayee> payeeList = payeeRepo.findByPayeeAccountId(1);
		List<FundTransferDto> dtoList = new ArrayList<>();
		int counter =1;
		if(payeeList != null) {
			for(LinkedPayee obj : payeeList) {
				FundTransferDto fundsDto = new FundTransferDto();
				fundsDto.setPayeeName(obj.getPayeeName());
				fundsDto.setAccountNo(obj.getAccountNo());
				fundsDto.setPayeeBank(obj.getPayeeBankName());
				fundsDto.setId(counter);
				counter++;
				dtoList.add(fundsDto);
			}
		}
		return dtoList;
	}
}
