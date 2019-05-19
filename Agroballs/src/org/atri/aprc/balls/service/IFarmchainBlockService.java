package org.atri.aprc.balls.service;

import java.util.List;

import org.web3j.protocol.core.methods.response.EthBlock.Block;


public interface IFarmchainBlockService<T> {
	Integer getBlockNo();
	Block getBlock(Integer blockno);
	Integer getTransationTotal(Integer blockno);
	List<T> getTransactions(Integer blockno);	
	
}
