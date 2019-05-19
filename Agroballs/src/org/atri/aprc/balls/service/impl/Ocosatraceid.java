package org.atri.aprc.balls.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.atri.aprc.balls.model.Ocosacontent;
import org.atri.aprc.balls.model.Ocosaplan;
import org.atri.aprc.balls.model.Ocosasuite;
import org.atri.aprc.balls.model.Ocosauser;
import org.atri.aprc.balls.service.IOcosacontentService;
import org.atri.aprc.balls.service.IOcosaplanService;
import org.atri.aprc.balls.service.IOcosasuiteService;
import org.atri.aprc.balls.service.IOcosatraceid;
import org.atri.aprc.balls.service.IOcosauserService;
import org.springframework.stereotype.Service;

@Service("ocosatraceidService")
public class Ocosatraceid implements IOcosatraceid{
	@Resource(name="ocosauserService")
    private IOcosauserService userService;
   @Resource(name="ocosaplanService")
    private IOcosaplanService planService;
   @Resource(name="ocosacontentService")
    private IOcosacontentService contentService;
   @Resource(name="ocosasuiteService")
   private IOcosasuiteService suiteService;
	
	public Long getUserfromPlan(Long planid) {
		Ocosauser user=new Ocosauser();
    	Ocosaplan plan = planService.findOne(planid);
        List<Ocosauser> userlist=userService.findAll();
        for(Ocosauser userx:userlist){
        	if(plan.getOwner().equalsIgnoreCase(userx.getAccount())) {
        	user=userx;
        	break;
        	}
        }
        return user.getId();
	}
	public Long getPlanfromContent(Long contentid) {
		Ocosaplan plan=new Ocosaplan();
    	Ocosacontent content = contentService.findOne(contentid);
    	//System.out.println("plancode: "+content.getPlancode());
        List<Ocosaplan> planlist=planService.findAll();
        for(Ocosaplan planx:planlist){
        	//System.out.println("plancode: "+planx.getPlancode());
        	if(content.getPlancode().equalsIgnoreCase(planx.getPlancode())) {
        	plan=planx;
        	break;
        	}
        }
        return plan.getId();	
	}
	public Long getContentfromSuite(Long suiteid) {
		Ocosacontent content=new Ocosacontent();
    	Ocosasuite suite = suiteService.findOne(suiteid);
        List<Ocosacontent> contentlist=contentService.findAll();
        for(Ocosacontent contentx:contentlist){
        	if(suite.getPlancode().equalsIgnoreCase(contentx.getPlancode())&&suite.getActioncode().equalsIgnoreCase(contentx.getStatecode())) {
        	content=contentx;
        	break;
        	}
        }
        return content.getId();
	}
}
