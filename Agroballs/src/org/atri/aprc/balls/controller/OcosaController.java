package org.atri.aprc.balls.controller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.atri.aprc.balls.model.Ocosacontent;
import org.atri.aprc.balls.model.Ocosaplan;
import org.atri.aprc.balls.model.Ocosasuite;
import org.atri.aprc.balls.model.Ocosauser;
import org.atri.aprc.balls.service.IOcosacontentService;
import org.atri.aprc.balls.service.IOcosaplanService;
import org.atri.aprc.balls.service.IOcosasuiteService;
import org.atri.aprc.balls.service.IOcosatraceid;
import org.atri.aprc.balls.service.IOcosauserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ocosa")
public class OcosaController {
	@Resource(name="ocosauserService")
    private IOcosauserService userService;
   @Resource(name="ocosaplanService")
    private IOcosaplanService planService;
   @Resource(name="ocosacontentService")
    private IOcosacontentService contentService;
   @Resource(name="ocosasuiteService")
   private IOcosasuiteService suiteService;
   @Resource(name="ocosatraceidService")
   private IOcosatraceid traceidService;
  
   @RequestMapping(value="/start",method=RequestMethod.GET)
    public ModelAndView getStart(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ocosa/ocosaentry");
        return mv;
   }
   
   @RequestMapping(value="/loginaction",method=RequestMethod.POST)
    public ModelAndView setLogin(@ModelAttribute("user") Ocosauser logdata){	        
        ModelAndView mv = new ModelAndView();
        String  loginer= logdata.getAccount();
        List<Ocosauser> userList = userService.findAll();
        if(loginer.equals("ocosaadmin")&&logdata.getPassword().equals("hjt6767doc")){
        	mv.addObject("userList", userList);
        	mv.setViewName("ocosa/list");
	        return mv;
        }//Eof 1st if
        else {
        	for(Ocosauser userx: userList){
           	if(userx.getAccount().equalsIgnoreCase(loginer)){
           		Long userid=userx.getId();
           		Ocosauser user=userx;
           		String statusreport;
           		statusreport=userx.getRealname()+"登入成功，進入本頁";
           		mv=getCommonplanlist(userid,statusreport);
    	        return mv;
           		}//Eof 2nd if
           	else{
    	        	continue;}//Eof 2nd else       		
           			  				}//Eof for 
        }//Eof 1st else
        	mv.setViewName("ocosa/add");
	        return mv;
        }//Eof setLogin
        	/*
        List<Ocosaplan> planList = new ArrayList<Ocosaplan>();       
        List<Ocosaplan> planListall = planService.findAll();
        for(Ocosaplan planx:(List<Ocosaplan>) planListall){
        	if(loginer.getAccount().equalsIgnoreCase(planx.getOwner())){
        		planList.add(planx);
        	}
        }
        */
        
    @RequestMapping(value="/count",method=RequestMethod.GET)
    public ModelAndView userCount() {
        int count = userService.findAll().size();	        
        ModelAndView mv = new ModelAndView();
        mv.addObject("userCount", count);
        mv.setViewName("ocosa/userCount");
        return mv;
    }
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public ModelAndView getAdd(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ocosa/add");
        return mv;
    }
    
    @RequestMapping(value="/addbyadmin",method=RequestMethod.GET)
    public ModelAndView getAddbyadmin(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ocosa/addbyadmin");
        return mv;
    }
    
    @RequestMapping(value="/addbyadminsuccess",method=RequestMethod.POST)
    public String setAddbyadmin(@ModelAttribute("user") Ocosauser user){
        userService.create(user);
        return "redirect:/ocosa/list";
    }
    
    @RequestMapping(value="/addsuccess",method=RequestMethod.POST)
    public ModelAndView setAddsuccess(@ModelAttribute("user") Ocosauser newuser){        
    	ModelAndView mv = new ModelAndView();
    	/*
        List<Ocosauser> userList = userService.findAll();
        for(Ocosauser usernow:(List<Ocosauser>) userList){
        	if(user.getAccount().equals(usernow.getAccount())){
        		mv.setViewName("ocosa/add");
    	        return mv;
        	}	        	
        }*/
        userService.create(newuser);
        /*
        List<Ocosaplan> planList = new ArrayList<Ocosaplan>();
        List<Ocosaplan> planListall = planService.findAll();
        for(Ocosaplan planx:(List<Ocosaplan>) planListall){
        	if(newuser.getAccount().equalsIgnoreCase(planx.getOwner())){
        		planList.add(planx);
        	}
        }
        */
        Long userid=newuser.getId();
        String statusreport;
   		statusreport=newuser.getAccount()+"帳戶新增成功，進入本頁";
   		mv=getCommonplanlist(userid,statusreport);
        return mv;
        }
    
    @RequestMapping(value="/list",method=RequestMethod.GET)
    public ModelAndView getUserlist(Model model){	        
        ModelAndView mv = new ModelAndView();
        List<Ocosauser> userList = userService.findAll();
        System.out.println("log======table 'user' all records:"+userList.size());
        Iterator<Ocosauser> iterator=userList.iterator();
        synchronized (userList){
        for(Ocosauser userx: userList){
        	if(userx.getAccount().equalsIgnoreCase("admin")){
        iterator.remove();
        	}
        }
        }
        mv.addObject("userList", userList);
        mv.setViewName("ocosa/list");
        return mv;
    } 	    
    	    
    @RequestMapping(value="/show/{userid}",method=RequestMethod.GET)
    public ModelAndView show(@PathVariable Long userid){
        Ocosauser user = userService.findOne(userid);	        
        ModelAndView mv = new ModelAndView();
        mv.addObject("user", user);
        mv.setViewName("ocosa/detail");
        return mv;
    }
    
    @RequestMapping(value="/del/{userid}",method=RequestMethod.GET)
    public String del(@PathVariable Long userid){
        userService.deleteById(userid);	        
        return "redirect:/ocosa/list";
    }
    
    @RequestMapping(value="/edit/{userid}",method=RequestMethod.GET)
    public ModelAndView getEdit(@PathVariable Long userid,Model model){
        Ocosauser user = userService.findOne(userid);
        model.addAttribute("userAttribute", user);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ocosa/edit");
        return mv;
    }
    
    @RequestMapping(value="/save/{userid}",method=RequestMethod.POST)
    public String saveEdit(@ModelAttribute("userAttribute") Ocosauser user,@PathVariable Long userid){
        userService.update(user);
        return "redirect:/ocosa/list";
    }
    @RequestMapping(value="/backtoplanlist/{userid}",method=RequestMethod.GET)
    public ModelAndView backtoplanlist(Model model,@PathVariable Long userid){
    	ModelAndView mv = new ModelAndView();
    		String statusreport;
   		statusreport="未有處理動作，回到本頁";
   		mv=getCommonplanlist(userid,statusreport);
        return mv;
    }
    
    public ModelAndView getCommonplanlist(Long userid,String statusreport){        
    	Ocosauser user=userService.findOne(userid);
	 	ModelAndView mv = new ModelAndView();
    List<Ocosaplan> planList = new ArrayList<Ocosaplan>();
    List<Ocosaplan> planListall = planService.findAll();
    for(Ocosaplan planx:(List<Ocosaplan>) planListall){
    	if(planx.getOwner().equalsIgnoreCase(user.getAccount())||planx.getShareto().equalsIgnoreCase(user.getAccount())){
    		planList.add(planx);
    	}
    	}
    mv.addObject("statusreport",statusreport);
    mv.addObject("user", user);
    mv.addObject("planList", planList);
    System.out.println("有執行到getCommonplanlist");
    mv.setViewName("ocosa/listplan");
    return mv;
}
    /*    
    @RequestMapping(value="/planmanage/{userid}",method=RequestMethod.GET)
    public ModelAndView getlistplan2(Model model,@PathVariable Long userid){	        
        Ocosauser user=userService.findOne(userid);
    	 	ModelAndView mv = new ModelAndView();
        List<Ocosaplan> planList = new ArrayList<Ocosaplan>();
        List<Ocosaplan> planListall = planService.findAll();
        for(Ocosaplan planx:(List<Ocosaplan>) planListall){
        	if(planx.getOwner().equalsIgnoreCase(user.getAccount())||planx.getShareto().equalsIgnoreCase(user.getAccount())){
        		planList.add(planx);
        	}
        	}
        mv.addObject("user", user);
        mv.addObject("planList", planList);
        mv.setViewName("ocosa/listplan");
        return mv;
    }
    */
    @RequestMapping(value="/addplan/{userid}",method=RequestMethod.GET)
    public ModelAndView getAddplan(@PathVariable Long userid){
        ModelAndView mv = new ModelAndView();
        Ocosauser user= userService.findOne(userid);
        List<Ocosauser> userList = userService.findAll();
        for(Ocosauser userx: userList){
        	if("manager".equalsIgnoreCase(userx.getRights())){
        userList.remove(userx);
        break;
        	}        	
         }
        mv.addObject("userList", userList);
        mv.addObject("user", user);
        mv.addObject("userid", userid);
        mv.setViewName("ocosa/addplan");
        return mv;
    }
        
    @RequestMapping(value="/saveplan/{userid}",method=RequestMethod.POST)
    public ModelAndView getsaveplan(@ModelAttribute("plan") Ocosaplan plan,@PathVariable Long userid){
    	ModelAndView mv = new ModelAndView();
    	planService.create(plan);
     	//mv.setViewName();
    	String statusreport;
   		statusreport=plan.getPlancode()+"專案代碼儲存成功，回到本頁";
   		mv=getCommonplanlist(userid,statusreport);   		
        return mv;
    }    
        
    @RequestMapping(value="/editplan/{planid}",method=RequestMethod.GET)
    public ModelAndView getEditplan(@PathVariable Long planid,Model model){
        Ocosaplan plan = planService.findOne(planid);
        Long userid=traceidService.getUserfromPlan(planid);
        model.addAttribute("planAttribute", plan);
        ModelAndView mv = new ModelAndView();
        mv.addObject("userid", userid);
        mv.setViewName("ocosa/editplan");
        return mv;
    }
    @RequestMapping(value="/updateplan/{userid}",method=RequestMethod.POST)
    public ModelAndView updateplan(@ModelAttribute("planAttribute") Ocosaplan plan,@PathVariable Long userid){
    	ModelAndView mv = new ModelAndView();
    	planService.update(plan);
     	//mv.setViewName();
    	String statusreport;
   		statusreport=plan.getPlancode()+"專案代碼更新成功，回到本頁";
   		mv=getCommonplanlist(userid,statusreport);   		
        return mv;
    } 
    
    @RequestMapping(value="/delplan/{planid}",method=RequestMethod.GET)
    public ModelAndView getdelplan(@PathVariable Long planid){
        Ocosaplan plan = planService.findOne(planid);
        Long userid=traceidService.getUserfromPlan(planid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("plan", plan);
        mv.addObject("userid", userid);
        mv.setViewName("ocosa/delplan");
        return mv;
    }
    
    @RequestMapping(value="/confirmdelplan/{planid}",method=RequestMethod.POST)
    public ModelAndView delplan(@PathVariable Long planid, HttpServletRequest req){
    	String userpw=req.getParameter("userpw");
    	Ocosaplan plan = planService.findOne(planid);
    	Long userid=traceidService.getUserfromPlan(planid);
    	Ocosauser user=userService.findOne(userid);
        ModelAndView mv = new ModelAndView();
        String statusreport;
        if(userpw.equalsIgnoreCase(user.getPassword())){
    	planService.deleteById(planid);
    	statusreport="已刪除專案"+plan.getPlancode();
    	  }else{
        	statusreport="建立者密碼不符,無法刪除專案"+plan.getPlancode();
    	  }
        mv=getCommonplanlist(userid,statusreport);        
        return mv;       
    }   
    
    @RequestMapping(value="/setplangoal/{planid}")
    public ModelAndView setPlangoal(@PathVariable Long planid){
        Ocosaplan plan = planService.findOne(planid);
        Long userid=traceidService.getUserfromPlan(planid);
        ModelAndView mv = new ModelAndView();
        mv.addObject("plan", plan);
        mv.addObject("userid", userid);
        //mv.addObject("planid", planid);
        mv.setViewName("ocosa/planinfo");
        return mv;
    }
    
    @RequestMapping(value="/displaymenu/{planid}")
    public ModelAndView setDisplaymenu(@PathVariable Long planid){
    	Ocosaplan plan = planService.findOne(planid);
    	Long userid=traceidService.getUserfromPlan(planid);    	
        ModelAndView mv = new ModelAndView();
        mv.addObject("planid", planid);
        mv.addObject("userid", userid);
        mv.setViewName("ocosa/displaymenu");
        return mv;
    }   
    
    @RequestMapping(value="/saveinfo/{planid}",method=RequestMethod.POST)
    public String setSaveinfo(@PathVariable Long planid, @ModelAttribute("contentAttribute") Ocosacontent content){
        contentService.create(content);
        return "redirect:/ocosa/showcontent/"+planid;
        /*
        Long contentid=content.getId();
        String statusreport="本頁設立關鍵成功因素";
        ModelAndView mv = new ModelAndView();
        mv=getCommonplanlist(planid,statusreport);        
        return mv;
        */      
    }
    
    public ModelAndView preAddcontent(Long planid,Long content0id, Long contentid){        
    	Ocosacontent content0=contentService.findOne(content0id);
    	Ocosacontent content=contentService.findOne(contentid);
    	Long userid=traceidService.getUserfromPlan(planid);
	 	ModelAndView mv = new ModelAndView();
	 	String thistype=content.getStatetype();
	 	String[][] typeinfo=new String[2][3];
	 	typeinfo=getTypeinfo(thistype);
	 	String statusreport="本頁繼續輸入"+typeinfo[1][2]+"內容";	 	
	    mv.addObject("statusreport",statusreport);
	    mv.addObject("content0", content0);
	    mv.addObject("content", content);
	    mv.addObject("typeinfo",typeinfo);
	    mv.addObject("planid",planid);
	    mv.addObject("userid", userid);
	    System.out.println("有執行到preAddcontent");
	    mv.setViewName("ocosa/addcontent");
	    return mv;
    } 
    
	public String[][] getTypeinfo(String thistype){
		String[] typearray={"obj","csf","obs","str","act","oth"};
	 	String[] typecarray={"計畫目標","關鍵成功因素","主要障礙","解決策略","行動措施","其他事項"};
	 	String[][] typeinfo=new String[2][3];
	 	for(int i=0;i<6;i++){
		if(thistype.equalsIgnoreCase(typearray[i])){
			switch(i) {			
			case 0:
				typeinfo[0][0]="ceiling";
				typeinfo[0][1]=typearray[i];
				typeinfo[0][2]=typearray[i+1];
				typeinfo[1][0]="沒有上一層";
				typeinfo[1][1]=typecarray[i];
				typeinfo[1][2]=typecarray[i+1];		
				break;
			case 5:
				typeinfo[0][0]=typearray[i-1];
				typeinfo[0][1]=typearray[i];
				typeinfo[0][2]="floor";
				typeinfo[1][0]=typecarray[i-1];
				typeinfo[1][1]=typecarray[i];
				typeinfo[1][2]="沒有下一層";	
				break;
			default:
				typeinfo[0][0]=typearray[i-1];
				typeinfo[0][1]=typearray[i];
				typeinfo[0][2]=typearray[i+1];
				typeinfo[1][0]=typecarray[i-1];
				typeinfo[1][1]=typecarray[i];
				typeinfo[1][2]=typecarray[i+1];				
			}			
			}
		
	 	}
	 		return typeinfo;
		}
      
    @RequestMapping(value="/showcontent/{planid}",method=RequestMethod.GET)
    public ModelAndView getshowcontent(@PathVariable Long planid){
    	Ocosaplan plan = planService.findOne(planid);
    	Long userid=traceidService.getUserfromPlan(planid);
        ModelAndView mv = new ModelAndView();
       	String plancode=plan.getPlancode();
       	List<Ocosacontent> contentListall = contentService.findAll();
       List<Ocosacontent> contentList = new ArrayList<Ocosacontent>();
       for(Ocosacontent contentx:(List<Ocosacontent>) contentListall){
       	if(plancode.equalsIgnoreCase(contentx.getPlancode())){
       		contentList.add(contentx);
       	}
       }
        Collections.sort(contentList, new Comparator<Ocosacontent>(){
        	 @Override
        	 public int compare(Ocosacontent o1, Ocosacontent o2) {
        	  return o1.getStatecode().compareTo(o2.getStatecode());
        	 }   
        	});
        mv.addObject("contentList", contentList);
        mv.addObject("planid",planid);
        mv.addObject("userid",userid);
        //mv.addObject("size",size);
        mv.setViewName("ocosa/listcontent");
        return mv;
    }    	    
         
    @RequestMapping(value="/editcontent/{contentid}",method=RequestMethod.GET)
    public ModelAndView getEditcontent(@PathVariable Long contentid,Model model){
        Ocosacontent content = contentService.findOne(contentid);
        Long planid=traceidService.getPlanfromContent(contentid); 
        Long userid=traceidService.getUserfromPlan(planid);
        model.addAttribute("contentAttribute", content);
        ModelAndView mv = new ModelAndView();
        mv.addObject("planid",planid);
        mv.addObject("userid",userid);
        mv.setViewName("ocosa/editcontent");
        return mv;
    }
    
    @RequestMapping(value="/updatecontent/{contentid}",method=RequestMethod.POST)
    public String saveEditcontent(@ModelAttribute("contentAttribute") Ocosacontent content,@PathVariable Long contentid){
        contentService.update(content);
        System.out.println("有執行content更新");
        Long planid=traceidService.getPlanfromContent(contentid); 
        return "redirect:/ocosa/showcontent/"+planid;
    }
    
    @RequestMapping(value="/delcontent/{contentid}",method=RequestMethod.GET)
    public ModelAndView delcontent(@PathVariable Long contentid,Model model){
    	Ocosacontent content=contentService.findOne(contentid);
    	Long planid=traceidService.getPlanfromContent(contentid);
    	Long userid=traceidService.getUserfromPlan(planid);
    	ModelAndView mv = new ModelAndView();
    	mv.addObject("content", content);
        mv.addObject("planid",planid);
        mv.addObject("userid",userid);
        //mv.addObject("size",size);
        mv.setViewName("ocosa/delcontent");
        return mv; 
    }
    
    @RequestMapping(value="/confirmdelcontent/{contentid}",method=RequestMethod.GET)
    public String confirmDelcontent(@PathVariable Long contentid){
    	Long planid=traceidService.getPlanfromContent(contentid);
    	contentService.deleteById(contentid); 
    	System.out.println("有執行content刪除");
        return "redirect:/ocosa/showcontent/"+planid;
    }
    
    @RequestMapping(value="/addcontent/{contentid}")
    public ModelAndView getPreaddcontent(@PathVariable Long contentid, @RequestParam("flag") String flag){
    	Long planid=traceidService.getPlanfromContent(contentid); 
    	//System.out.println("對應到的contentid: "+contentid);
    	//System.out.println("對應到的planid: "+planid);
    	Long userid=traceidService.getUserfromPlan(planid);
    	Ocosaplan plannow=planService.findOne(planid);
        Ocosacontent content0=new Ocosacontent();
        //List<Ocosacontent> contentList = new ArrayList<Ocosacontent>();
        List<Ocosacontent> contentListall = contentService.findAll();
        //System.out.println("對應到的計畫英文代號"+plannow.getPlancode());
        for(Ocosacontent contentx:(List<Ocosacontent>) contentListall){
        	if(plannow.getPlancode().equalsIgnoreCase(contentx.getPlancode())&&"obj".equalsIgnoreCase(contentx.getStatetype())){
        		content0=contentx;
        		break;
        	}
        }
        Long content0id=content0.getId();
        System.out.println("檢查content0id="+content0id+"; contentid="+contentid);
        ModelAndView mv = new ModelAndView();
        if(flag.equalsIgnoreCase("act")){
        	Ocosacontent content=contentService.findOne(contentid);
        	mv.addObject("content", content);
        	mv.addObject("content0", content0);
            mv.addObject("planid",planid);
            mv.addObject("userid",userid);
            mv.setViewName("ocosa/addsuite");
        }
        else{
        mv=preAddcontent(planid,content0id,contentid);        
        }
        return mv; 
    }    
   
	@RequestMapping(value="/savecontent/{planid}",method=RequestMethod.POST)
    public String getSavecontent(@PathVariable("planid") Long planid,HttpServletRequest request){
    	String[] vb=new String[6];
		String[] st=new String[6];
    	String[] pr=new String[6];
	   String[] statecode=new String[6];
	   int[] upper=new int[6];
	   String plancode=request.getParameter("plancode");
	   String planname=request.getParameter("planname");
		String statetype=request.getParameter("nexttype");
		String lastcode=request.getParameter("statecode");
		String uppercode=lastcode.substring(lastcode.indexOf(',')+1);

		vb[0]=request.getParameter("verb1");
	       vb[1]=request.getParameter("verb2");
	       vb[2]=request.getParameter("verb3");
	       vb[3]=request.getParameter("verb4");
	       vb[4]=request.getParameter("verb5");
	       vb[5]=request.getParameter("verb6");

		st[0]=request.getParameter("stdstate1");
       st[1]=request.getParameter("stdstate2");
       st[2]=request.getParameter("stdstate3");
       st[3]=request.getParameter("stdstate4");
       st[4]=request.getParameter("stdstate5");
       st[5]=request.getParameter("stdstate6");

       pr[0]=request.getParameter("stdprio1");
       pr[1]=request.getParameter("stdprio2");
       pr[2]=request.getParameter("stdprio3");
       pr[3]=request.getParameter("stdprio4");
       pr[4]=request.getParameter("stdprio5");
       pr[5]=request.getParameter("stdprio6");
       System.out.println("有執行contnt資料接收");
       for(int i=0;i<6;i++){
    	   Ocosacontent contenti=new Ocosacontent();
    	   if(vb[i]!=""&&vb[i]!=null){    		   
    	   upper[i]=Integer.parseInt(uppercode)*10+i+1;
    	   statecode[i]=Integer.toString(upper[i]);
    	   contenti.setSupercode("5");
     	   contenti.setPlancode(plancode);
    	   contenti.setPlanname(planname);
    	   contenti.setVerb(vb[i]);
    		contenti.setState(st[i]);
    		contenti.setStatecheck("0");
    		contenti.setStatecode(statecode[i]);
    		contenti.setStateprior(pr[i]);
    		contenti.setStatetype(statetype);
    		contenti.setSwottype(statetype);
    		contenti.setUppercode(uppercode);
    		contentService.create(contenti);
    		}else {
    			continue;
    		}
       }
       System.out.println("有執行content儲存");
       return "redirect:/ocosa/showcontent/"+planid;
    }   
	
	@RequestMapping(value="/savesuite/{contentid}",method=RequestMethod.POST)
    public String getSavesuite(@PathVariable("contentid") Long contentid,HttpServletRequest request){
		Ocosacontent content=contentService.findOne(contentid);
		Long planid=traceidService.getPlanfromContent(contentid);
		String plancode=content.getPlancode();
	  	String uppercode=content.getUppercode();
		String actioncode=content.getStatecode();
		String actionverb=content.getVerb();
		String action=content.getState();
		String actioner=request.getParameter("actioner");
		String coactioner=request.getParameter("coactioner");
		String budget=request.getParameter("budget");
		String manpower=request.getParameter("manpower");
		String startyear=request.getParameter("startyear");
		String startmonth=request.getParameter("startmonth");
		String startday=request.getParameter("startday");
		String pertime=request.getParameter("pertime");
		String interv=request.getParameter("interv");
		String times=request.getParameter("times");
		String endyear=request.getParameter("endyear");
		String endmonth=request.getParameter("endmonth");
		String endday=request.getParameter("endday");
		String dateline=endyear+"/"+endmonth+"/"+endday;
		String benetype=request.getParameter("benetype");
		String beneunit=request.getParameter("beneunit");
		String benefigure=request.getParameter("benefigure");
		System.out.println("有執行suite資料接收");
		Ocosasuite suite0=new Ocosasuite();
    	   //suite0.setSupercode("5");
     	   suite0.setPlancode(plancode);
    	   suite0.setActioncode(actioncode);
    	   suite0.setActionverb(actionverb);
    		suite0.setAction(action);
    		suite0.setActioner(actioner);
    		suite0.setCoactioner(coactioner);
    		suite0.setBudget(budget);
    		suite0.setManpower(manpower);
    		suite0.setStartyear(startyear);
    		suite0.setStartmonth(startmonth);
    		suite0.setStartday(startday);
    		suite0.setPertime(pertime);
    		suite0.setInterv(interv);
    		suite0.setTimes(times);
    		suite0.setDateline(dateline);
    		suite0.setEndyear(endyear);
    		suite0.setEndmonth(endmonth);
    		suite0.setEndday(endday);
    		suite0.setBenetype(benetype);
    		suite0.setBeneunit(beneunit);
    		suite0.setBenefigure(benefigure);
    		suite0.setUppercode(uppercode);
    		suiteService.create(suite0);
    		System.out.println("有執行行動措施儲存");
    		return "redirect:/ocosa/showcontent/"+planid;
    }
		   
    @RequestMapping(value="/listsuite/{planid}",method=RequestMethod.GET)
        public ModelAndView getlistsuite(@PathVariable("planid") Long planid,ServletRequest req){
            Ocosaplan plan = planService.findOne(planid);
            Long userid=traceidService.getUserfromPlan(planid);
            ModelAndView mv = new ModelAndView();
        List<Ocosasuite> suiteList = new ArrayList<Ocosasuite>();
        List<Ocosasuite> suiteListall = suiteService.findAll();
        //System.out.println("log======table 'suite' all records:"+suiteList.size());
        for(Ocosasuite suitex:(List<Ocosasuite>) suiteListall){
        	if(plan.getPlancode().equalsIgnoreCase(suitex.getPlancode())){
        		suiteList.add(suitex);
        	}
        }
        Collections.sort(suiteList, new Comparator<Ocosasuite>(){
        	 @Override
        	 public int compare(Ocosasuite o1, Ocosasuite o2) {
        	  return o1.getActioncode().compareTo(o2.getActioncode());
        	 }   
        	});
        Long suitexid=suiteList.get(0).getId();
        Long contentid=traceidService.getContentfromSuite(suitexid);
		Ocosacontent content=contentService.findOne(contentid);
		String planname=content.getPlanname();
        mv.addObject("suiteList", suiteList);
        mv.addObject("planname",planname);
        mv.addObject("planid",planid);
        mv.addObject("userid",userid);
        //mv.addObject("size",size);
        mv.setViewName("ocosa/listsuite");
        return mv;
    }
    
    @RequestMapping(value="/editsuite/{suiteid}",method=RequestMethod.GET)
    public ModelAndView getEditsuite(@PathVariable Long suiteid,Model model){
        Ocosasuite suite = suiteService.findOne(suiteid);
        Long contentid=traceidService.getContentfromSuite(suiteid);
        Long planid=traceidService.getPlanfromContent(contentid); 
    	Long userid=traceidService.getUserfromPlan(planid);       
        ModelAndView mv = new ModelAndView();
        model.addAttribute("suiteAttribute", suite);
        mv.addObject("planid",planid);
        mv.addObject("userid",userid);
        mv.setViewName("ocosa/editsuite");
        return mv;
    }
    
    @RequestMapping(value="/updatesuite/{suiteid}",method=RequestMethod.POST)
    public String saveEditsuite(@PathVariable Long suiteid,@ModelAttribute("suiteAttribute") Ocosasuite suite){
    	Long contentid=traceidService.getContentfromSuite(suiteid);
    	Long planid=traceidService.getPlanfromContent(contentid); 
    	suiteService.update(suite);
    	return "redirect:/ocosa/listsuite/"+planid; 
    }
    
    @RequestMapping(value="/delsuite/{suiteid}",method=RequestMethod.GET)
    public String delsuite(@PathVariable Long suiteid,Model model){
    	Long contentid=traceidService.getContentfromSuite(suiteid);
    	Long planid=traceidService.getPlanfromContent(contentid); 
    	suiteService.deleteById(suiteid);        
        return "redirect:/ocosa/listsuite/"+planid;        
    }
    
    @RequestMapping(value="/doguideline/{planid}")
    public ModelAndView getguideline(@PathVariable Long planid, @RequestParam("statusreport") String statusreport){
    	Ocosaplan plan = planService.findOne(planid);
    	Long userid=traceidService.getUserfromPlan(planid);
    	int indextype,indexorder;
    	String linei,indenti,lineendi;
    	List<String> linelist=new ArrayList<String>();
    	String[][] orderlabel={
    			{"一、","二、","三、","四、","五、","六、"},
    			{"(一)","(二)","(三)","(四)","(五)","(六)"},    			
    			{"1.","2.","3.","4.","5.","6."},
    			{"(1)","(2)","(3)","(4)","(5)","(6)"},    			
    			{"＊","＊","＊","＊","＊","＊"}
    			};    	
        ModelAndView mv = new ModelAndView();
       	String plancode=plan.getPlancode();
       	Ocosacontent content0=new Ocosacontent();
       	List<Ocosacontent> contentListall = contentService.findAll();
       List<Ocosacontent> contentList = new ArrayList<Ocosacontent>();
       for(Ocosacontent contentx:(List<Ocosacontent>) contentListall){
       	if(plancode.equalsIgnoreCase(contentx.getPlancode())){
       		
       		if("obj".equalsIgnoreCase(contentx.getStatetype())) {
       			content0=contentx;
       		}else {
       			//if("csf".equalsIgnoreCase(contentx.getStatetype())||"str".equalsIgnoreCase(contentx.getStatetype())||"act".equalsIgnoreCase(contentx.getStatetype()))
       			//{
       		contentList.add(contentx);
       			//}
       		}
       	}
       }
        Collections.sort(contentList, new Comparator<Ocosacontent>(){
        	 @Override
        	 public int compare(Ocosacontent o1, Ocosacontent o2) {
        	  return o1.getStatecode().compareTo(o2.getStatecode());
        	 }   
        	});
        for(Ocosacontent contenti:(List<Ocosacontent>) contentList){
        	indextype=contenti.getStatecode().length()-2;
        	indexorder=Integer.parseInt(contenti.getStatecode())-Integer.parseInt(contenti.getUppercode())*10-1;
        	if((indextype<0||indextype>3)||(indexorder<0||indexorder>5)) {
        		continue;
        	}
        	switch(indextype) {
        	case 0:indenti="";lineendi="";break;
        	case 1:indenti="<blockquote>";lineendi="</blockquote>";break;
        	case 2:indenti="<blockquote><blockquote>";lineendi="</blockquote></blockquote>";break;
        	default:indenti="<blockquote><blockquote><blockquote>";lineendi="</blockquote></blockquote></blockquote>";
        	}
        	if(indextype==1) {
        		linei=indenti+orderlabel[indextype][indexorder]+"解決"+contenti.getState()+lineendi;	
        	}else {
        	linei=indenti+orderlabel[indextype][indexorder]+contenti.getVerb()+contenti.getState()+lineendi;
        	}
        	linelist.add(linei);
        	} 
        mv.addObject("linelist", linelist);
        mv.addObject("content0", content0);
        mv.addObject("planid",planid);
        mv.addObject("userid",userid);
        mv.addObject("statusreport",statusreport);
        mv.setViewName("ocosa/planguideline");
            return mv; 
    }
    
    @RequestMapping(value="/doactionschedule/{planid}",method=RequestMethod.GET)
    public ModelAndView getactionschedule(@PathVariable("planid") Long planid,@RequestParam("statusreport") String statusreport){
        Ocosaplan plan = planService.findOne(planid);
        Long userid=traceidService.getUserfromPlan(planid);
        ModelAndView mv = new ModelAndView();
    List<Ocosasuite> suiteList = new ArrayList<Ocosasuite>();
    List<Ocosasuite> suiteListall = suiteService.findAll();
    //System.out.println("log======table 'suite' all records:"+suiteList.size());
    for(Ocosasuite suitex:(List<Ocosasuite>) suiteListall){
    	if(plan.getPlancode().equalsIgnoreCase(suitex.getPlancode())){
    		suiteList.add(suitex);
    	}
    }
    Collections.sort(suiteList, new Comparator<Ocosasuite>(){
    	 @Override
    	 public int compare(Ocosasuite o1, Ocosasuite o2) {
    	  return o1.getActioncode().compareTo(o2.getActioncode());
    	 }   
    	});
    Long suitexid=suiteList.get(0).getId();
    Long contentid=traceidService.getContentfromSuite(suitexid);
	Ocosacontent content=contentService.findOne(contentid);
	String planname=content.getPlanname();
    mv.addObject("suiteList", suiteList);
    mv.addObject("planname",planname);
    mv.addObject("planid",planid);
    mv.addObject("userid",userid);
    mv.addObject("statusreport",statusreport);
    mv.setViewName("ocosa/actionschedule");
    return mv;
}   
    
    @RequestMapping(value="/dofishbonestrategy/{planid}",method=RequestMethod.GET)
    public ModelAndView getfishbonestrategy(@PathVariable("planid") Long planid,@RequestParam("statusreport") String statusreport){
        Ocosaplan plan = planService.findOne(planid);
        Long userid=traceidService.getUserfromPlan(planid);
        ModelAndView mv = new ModelAndView();
       	String plancode=plan.getPlancode();
       	int boneno, bonesubno;
       	List<Ocosacontent> contentListall = contentService.findAll();
       Ocosacontent content0 = new Ocosacontent();
       List<Ocosacontent> boneumList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> boneulList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> boneurList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> bonedmList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> bonedlList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> bonedrList = new ArrayList<Ocosacontent>();
       String[] boneumstate=new String[7];
       for(Ocosacontent contentx:(List<Ocosacontent>) contentListall){
    	   boneno=0;
    	   if(plancode.equalsIgnoreCase(contentx.getPlancode())&&"obj".equalsIgnoreCase(contentx.getStatetype())) {
      			content0=contentx;
      		}else {
       	if(plancode.equalsIgnoreCase(contentx.getPlancode())&&("csf".equalsIgnoreCase(contentx.getStatetype())||"str".equalsIgnoreCase(contentx.getStatetype()))){
       		boneno=Integer.parseInt(contentx.getStatecode().substring(1,2));
       		//System.out.println("boneno="+boneno);
       		switch(boneno) {
       		case 1:boneumList.add(contentx);break;
       		case 2:boneurList.add(contentx);break;
       		case 3:boneulList.add(contentx);break;
       		case 4:bonedmList.add(contentx);break;
       		case 5:bonedrList.add(contentx);break;
       		default:bonedlList.add(contentx);
       		}
       		}
      	}
       }
        Collections.sort(boneumList, new Comparator<Ocosacontent>(){
        	 @Override
        	 public int compare(Ocosacontent o1, Ocosacontent o2) {
        	  return o1.getStatecode().compareTo(o2.getStatecode());
        	 }   
        	});
        String planname=content0.getPlanname();
        String object=content0.getVerb()+content0.getState();
        	boneno=0;
        for(Ocosacontent contentx : boneumList) {
        	boneumstate[boneno]=contentx.getVerb()+contentx.getState();
        	boneno++;
        	if(boneno>6) {
        		break;
        	}
        }
        mv.addObject("boneumstate", boneumstate);
        mv.addObject("object",object); 
    mv.addObject("planname",planname);
    mv.addObject("planid",planid);
    mv.addObject("userid",userid);
    mv.addObject("statusreport",statusreport);
    mv.setViewName("ocosa/fishbonestrategy");
    return mv;
}
    @RequestMapping(value="/dofishboneproblem/{planid}",method=RequestMethod.GET)
    public ModelAndView getfishboneproblem(@PathVariable("planid") Long planid,@RequestParam("statusreport") String statusreport){
        Ocosaplan plan = planService.findOne(planid);
        Long userid=traceidService.getUserfromPlan(planid);
        ModelAndView mv = new ModelAndView();
       	String plancode=plan.getPlancode();
       	int boneno, bonesubno;
       	List<Ocosacontent> contentListall = contentService.findAll();
       Ocosacontent content0 = new Ocosacontent();
       List<Ocosacontent> boneumList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> boneulList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> boneurList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> bonedmList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> bonedlList = new ArrayList<Ocosacontent>();
       List<Ocosacontent> bonedrList = new ArrayList<Ocosacontent>();
       String[] boneumstate=new String[7];
       for(Ocosacontent contentx:(List<Ocosacontent>) contentListall){
    	   boneno=0;
    	   if(plancode.equalsIgnoreCase(contentx.getPlancode())&&"obj".equalsIgnoreCase(contentx.getStatetype())) {
      			content0=contentx;
      		}else {
       	if(plancode.equalsIgnoreCase(contentx.getPlancode())&&("obs".equalsIgnoreCase(contentx.getStatetype()))){
       		boneno=Integer.parseInt(contentx.getStatecode().substring(1,2));
       		//System.out.println("boneno="+boneno);
       		switch(boneno) {
       		case 1:boneumList.add(contentx);break;
       		case 2:boneurList.add(contentx);break;
       		case 3:boneulList.add(contentx);break;
       		case 4:bonedmList.add(contentx);break;
       		case 5:bonedrList.add(contentx);break;
       		default:bonedlList.add(contentx);
       		}
       		}
      	}
       }
        Collections.sort(boneumList, new Comparator<Ocosacontent>(){
        	 @Override
        	 public int compare(Ocosacontent o1, Ocosacontent o2) {
        	  return o1.getStatecode().compareTo(o2.getStatecode());
        	 }   
        	});
        String planname=content0.getPlanname();
        String object=content0.getVerb()+content0.getState();
        	boneno=0;
        for(Ocosacontent contentx : boneumList) {
        	boneumstate[boneno]=contentx.getVerb()+contentx.getState();
        	boneno++;
        	if(boneno>6) {
        		break;
        	}
        }
        mv.addObject("boneumstate", boneumstate);
        mv.addObject("object",object); 
    mv.addObject("planname",planname);
    mv.addObject("planid",planid);
    mv.addObject("userid",userid);
    mv.addObject("statusreport",statusreport);
    mv.setViewName("ocosa/fishboneproblem");
    return mv;
}
    
    public ModelAndView classifycontent(Long planid,String statusreport){        
    	Long userid=traceidService.getUserfromPlan(planid);
    	Ocosaplan plannow=planService.findOne(planid);
        Ocosacontent content0=new Ocosacontent();
        List<Ocosacontent> csfList = new ArrayList<Ocosacontent>();
        List<Ocosacontent> obstacleList = new ArrayList<Ocosacontent>();
        List<Ocosacontent> strategyList = new ArrayList<Ocosacontent>();
        List<Ocosacontent> actionList = new ArrayList<Ocosacontent>();
        List<Ocosacontent> contentListall = contentService.findAll();
        //System.out.println("log======table 'content' all records:"+contentList.size());
        for(Ocosacontent contentx:(List<Ocosacontent>) contentListall){
        	if(plannow.getPlancode().equalsIgnoreCase(contentx.getPlancode())) {
        		switch(contentx.getStatetype()) {
        		case "obj":content0=contentx;
        					break;
        		case "csf":csfList.add(contentx);
        					break;
        		case "obs":obstacleList.add(contentx);
							break;
        		case "str":strategyList.add(contentx);
							break;
        		case "act":actionList.add(contentx);
							break;
        		}
        	}
        }
        	Long content0id=content0.getId();
        	ModelAndView mv = new ModelAndView();
           	mv.addObject("csfList", csfList);
           	mv.addObject("obstacleList", obstacleList);
           	mv.addObject("strategyList", strategyList);
           	mv.addObject("actionList", actionList);
        	mv.addObject("content0", content0);
            mv.addObject("planid",planid);
            mv.addObject("userid",userid);
            mv.addObject("statusreport",statusreport);
	    return mv;
    }   
    
}
