package com.opbank.app.service;

import com.opbank.app.dto.BankInfoDto;
import com.opbank.app.dto.UserInfoDto;

public interface BankService {
	public BankInfoDto getBankAccountInfo(long bankId);
}
