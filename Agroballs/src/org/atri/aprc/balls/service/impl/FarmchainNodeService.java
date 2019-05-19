package org.atri.aprc.balls.service.impl;

import org.atri.aprc.balls.service.IFarmchainNodeService;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.admin.Admin;
import org.web3j.protocol.http.HttpService;
@Service("farmchainNodeService")
public class FarmchainNodeService implements IFarmchainNodeService {
	private static String ip1 = "http://60.250.15.157:8545";
	private FarmchainNodeService(){}
	private volatile static Web3j web3j;
	private  volatile  static Admin admin;	
	
	@Override
	public Web3j getLocalNode() {		
		if(web3j==null){
		synchronized (FarmchainNodeService.class){
		if(web3j==null){
		web3j = Web3j.build(new HttpService());
		}
		}
		}
		return web3j;
		}
	

	@Override
	public Web3j getBaseNode() {
		if(web3j==null){
			synchronized (FarmchainNodeService.class){
			if(web3j==null){
			web3j = Web3j.build(new HttpService(ip1));
			}
			}
			}
			return web3j;
	}

	@Override
	public Web3j getNode(String nodeurl) {
		if(web3j==null){
			synchronized (FarmchainNodeService.class){
			if(web3j==null){
			web3j = Web3j.build(new HttpService(ip1));
			}
			}
			}
			return web3j;
	}

	@Override
	public Admin getAdmin() {
		if(admin==null){
			synchronized (FarmchainNodeService.class){
			if(admin==null){
			admin = Admin.build(new HttpService(ip1));
			}
			}
			}
			return admin;			
	}

}
