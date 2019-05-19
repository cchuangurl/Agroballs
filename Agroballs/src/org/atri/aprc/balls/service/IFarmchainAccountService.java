package org.atri.aprc.balls.service;

import java.math.BigInteger;
import java.util.List;

public interface IFarmchainAccountService {
	List<String> getAccountlist();
	String createAccount(String password);
	BigInteger getBalance(String accountId);
	int queryAccount();
	/*void UnlockAccount(String password);
	void queryAccount();
	void setBaseAccount();*/
}
