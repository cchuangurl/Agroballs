package org.atri.aprc.balls.service;

import org.web3j.protocol.core.methods.request.Transaction;
import org.web3j.protocol.core.methods.response.TransactionReceipt;

public interface IFarmchainTradeService {
	Transaction createTransaction();
	void setFromAccount(String s1); 
	void setNonce(String s2);
	void setGasPrice(Float g1);
	void setGasDefault(Float g0);
	void setToAccount(String s3);
	void setValue(Float v);
	void setMessage(String hexString);
	TransactionReceipt sentTransation(Transaction tx);
	Transaction getTrancation(TransactionReceipt txreceipt);
	
}
