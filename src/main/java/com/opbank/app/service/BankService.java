package com.opbank.app.service;

import com.opbank.app.dto.BankInfoDto;

public interface BankService {
	public BankInfoDto getBankAccountInfo(long bankId);
}
