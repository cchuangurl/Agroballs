package org.atri.aprc.balls.service;

import java.util.List;

import org.web3j.abi.datatypes.Array;
import org.web3j.tx.Contract;

public interface IFarmchainContractService<T> {
	Contract compileSolidity(String oricode);
	Array createAbi(Contract cont);
	void runContract(Contract cont);
	void getContractMethod(String methodname);
	void getContractEvent(String eventname);
	List<T> getEvents(Contract cont);
	
}
