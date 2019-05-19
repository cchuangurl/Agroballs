package org.atri.aprc.balls.service.impl;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.atri.aprc.balls.service.IFarmchainAccountService;
import org.atri.aprc.balls.service.IFarmchainNodeService;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.admin.Admin;
import org.web3j.protocol.admin.methods.response.NewAccountIdentifier;
import org.web3j.protocol.core.DefaultBlockParameter;
import org.web3j.protocol.core.DefaultBlockParameterNumber;
import org.web3j.protocol.core.methods.response.EthGetBalance;
@Service("farmchainAccountService")
public class FarmchainAccountService implements IFarmchainAccountService {
	
   	private static Web3j web3j;
	private static Admin admin;

	@Override
	public List<String> getAccountlist() {
		try{
			return  admin.personalListAccounts().send().getAccountIds();
			}catch (Exception e){
			e.printStackTrace();
			}

		return null;
	}

	@Override
	public String createAccount(String password) {
		try {
			NewAccountIdentifier newAccountIdentifier = admin.personalNewAccount(password).send();
			if(newAccountIdentifier!=null){
			String accountId = newAccountIdentifier.getAccountId();
			return  accountId;
			}
			} catch (Exception e) {
			e.printStackTrace();
			}

		return null;
	}

	@Override
	public BigInteger getBalance(String accountId) {
		try {
			DefaultBlockParameter defaultBlockParameter = new DefaultBlockParameterNumber(web3j.ethBlockNumber().send().getBlockNumber());
			EthGetBalance ethGetBalance =  web3j.ethGetBalance(accountId,defaultBlockParameter).send();
			if(ethGetBalance!=null){
			return ethGetBalance.getBalance();
			}
			}catch (Exception e){
			e.printStackTrace();
			}

		return null;
	}
	
	@Override
	public int queryAccount() {
		try{
			return  admin.personalListAccounts().send().hashCode();
			}catch (Exception e){
			e.printStackTrace();
			}

		return 0; 

	}


	/*@Override
	public void UnlockAccount(String password) {
		// TODO Auto-generated method stub

	}

	@Override
	public void queryAccount() {
		// TODO Auto-generated method stub

	}

	@Override
	public void setBaseAccount() {
		// TODO Auto-generated method stub

	}*/

}
