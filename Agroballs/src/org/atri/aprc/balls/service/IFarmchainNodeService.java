package org.atri.aprc.balls.service;

import org.web3j.protocol.Web3j;
import org.web3j.protocol.admin.Admin;

public interface IFarmchainNodeService {
	Web3j getLocalNode();
	Web3j getBaseNode();
	Web3j getNode(String nodeurl);
	Admin getAdmin();
}
