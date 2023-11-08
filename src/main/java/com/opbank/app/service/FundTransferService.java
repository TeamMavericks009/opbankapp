package com.opbank.app.service;

import java.util.List;

import com.opbank.app.dto.FundTransferDto;

public interface FundTransferService {

	public FundTransferDto getPayee(String payeeName);

	public boolean savePayee(FundTransferDto fundsDto);

	public List<FundTransferDto> getAllPayees(long userId);
}
