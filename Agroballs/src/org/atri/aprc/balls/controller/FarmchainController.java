package org.atri.aprc.balls.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.atri.aprc.balls.service.IFarmchainAccountService;
import org.atri.aprc.balls.service.IFarmchainNodeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.admin.Admin;

@Controller
@RequestMapping("/farmchain")
public class FarmchainController {
	
	@Resource(name="farmchainNodeService")
    private IFarmchainNodeService nodeService;
	@Resource(name="farmchainAccountService")
    private IFarmchainAccountService accountService;

	
	@RequestMapping(value="/start",method=RequestMethod.GET)
    public ModelAndView getStart(){
		
		Web3j web3j;
		Admin admin;
		web3j=nodeService.getBaseNode();
		admin=nodeService.getAdmin();
		String statusreport="BaseNode";
				
        ModelAndView mv = new ModelAndView();
        mv.addObject("statusreport",statusreport);
        mv.setViewName("farmchain/chainentry");
        return mv;
   }
	
	
	/*@RequestMapping(value="/nodeService",method=RequestMethod.GET)
    public ModelAndView getNodeService(){		
		Web3j web3j;
		Admin admin;
		web3j=nodeService.getBaseNode();
		admin=nodeService.getAdmin();
		String statusreport="BaseNode";
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmchain/Nodemsg");
        return mv;
	
	}*/
	
	@RequestMapping(value="/listaccount",method=RequestMethod.POST)
    public ModelAndView getaccounts() throws IOException{
		System.out.println("尚未連上區塊鏈");
		Web3j web3j1,web3j2;
		Admin admin1,admin2;
		web3j1=nodeService.getLocalNode();
		web3j2=nodeService.getBaseNode();
		String nodemsg1=web3j1.ethAccounts().toString();
		System.out.println("有取得web3j1.ethAccounts()"+nodemsg1);
		String nodemsg2=web3j2.ethAccounts().toString();
		/*admin1=nodeService.getAdmin();
		System.out.println("有執行getAdmin()1");
		admin2=nodeService.getAdmin();
		System.out.println("有執行getAdmin()2");*/
		String statusreport="BaseNode";
		List<String> accountList1=web3j1.ethAccounts().send().getAccounts();
		
		for(String accountmsg: accountList1)
		{
			System.out.println("有取得localnode帳戶ID:"+accountmsg); 
		}
		List<String> accountList2=web3j2.ethAccounts().send().getAccounts();
		System.out.println("有取得basenode帳戶ID清單"); 		
        ModelAndView mv = new ModelAndView();
        mv.addObject("statusreport",statusreport);
        //mv.addObject("accounthash",accounthash);
        mv.addObject("accountList",accountList2);
        mv.setViewName("farmchain/chainaccount");
        return mv;	
	}
	
}
