package org.atri.aprc.balls.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;

//import org.atri.aprc.balls.model.Ballccontrast;
//import org.atri.aprc.balls.model.Ballcevents;
import org.atri.aprc.balls.model.Ballcuser;
//import org.atri.aprc.balls.service.IBallccontrastService;
//import org.atri.aprc.balls.service.IBallceventsService;
import org.atri.aprc.balls.service.IBallcuserService;
//import org.atri.aprc.balls.service.impl.BallcextendService;
//import org.atri.aprc.balls.service.impl.BallcmoduleoneService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ballc")
public class BallcController {

    @Resource(name="ballcuserService")
   private IBallcuserService userService;
    /* @Resource(name="ballceventsService")
    private IBallceventsService eventsService;
    @Resource(name="ballccontrastService")
    private IBallccontrastService contrastService;*/
   
    
    @RequestMapping(value="/start",method=RequestMethod.GET)
    public ModelAndView getStart(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ballc/ballcentry");
        return mv;
   }
    
    @RequestMapping(value="/loginaction",method=RequestMethod.POST)
    public ModelAndView setLogin(@ModelAttribute("user") Ballcuser loginer){	        
        ModelAndView mv = new ModelAndView();
        String account = loginer.getAccount();
        List<Ballcuser> userList = userService.findAll();
        if(account.equals("ballcadmin")&&loginer.getPassword().equals("hjt6767doc")){
        	mv.addObject("userList", userList);
        	mv.setViewName("ballc/list");
        	return mv;
        	//return "redirect:/ballc/list";
        }//Eof 1st if
        else {
        	//RedirectAttributes redAtt = null;
        	for(Ballcuser userx: userList){
           	if(account.equalsIgnoreCase(userx.getAccount())){           		
           		Long userid=userx.getId();
           		//redAtt.addAttribute("user", userx);
           		//mv.addObject("product","香蕉");
               // mv.addObject("info","燈號");
           		//Ballcuser user=userx;
               //return "redirect:/ballc/ask";
           		//mv.setViewName("redirect:/ballc/ask?userid="+userid);
           		mv.setViewName("ballc/ballcframe");
    	        return mv;
           		}//Eof 2nd if
           	else{
    	        	continue;}//Eof 2nd else       		
           			  				}//Eof for 
        }//Eof 1st else
        	mv.setViewName("ballc/add");
	        return mv;
        //return "redirect:/ballc/add";
        }
    
    @RequestMapping(value="/count",method=RequestMethod.GET)
    public ModelAndView userCount() {
        
        int count = userService.findAll().size();
        
        ModelAndView mv = new ModelAndView();
        mv.addObject("userCount", count);
        mv.setViewName("ballc/userCount");
        return mv;
    }
    
    @RequestMapping(value="/list",method=RequestMethod.GET)
    public ModelAndView getUserlist(Model model){        
        ModelAndView mv = new ModelAndView();
        List<Ballcuser> userList = userService.findAll();
        System.out.println("log======table 'user' all records:"+userList.size());
       /*
        Iterator<Ballcuser> iterator=userList.iterator();
        synchronized (userList){
        for(Ballcuser userx: userList){
        	if(userx.getAccount().equalsIgnoreCase("ballcadmin")){
        iterator.remove();
        	}
        }
        }
        */
        mv.addObject("userList", userList);
        mv.setViewName("ballc/list");
        return mv;
    }
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public ModelAndView getAdd(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ballc/add");
        return mv;
    }
    
   @RequestMapping(value="/addsuccess",method=RequestMethod.POST)
    public ModelAndView setAddsuccess(@ModelAttribute("user") Ballcuser newuser){        
    	ModelAndView mv = new ModelAndView();
    	newuser.setRights("asker");
    	userService.create(newuser);
    	Long userid=newuser.getId();
    	mv.addObject("user", newuser);    	
    	//mv.addObject("product","香蕉");
      //mv.addObject("info","燈號");
    	//Ballcuser user=newuser;
      //return "redirect:/ballc/ask";
     //mv.setViewName("redirect:/ballc/ask?userid="+userid);
    	mv.setViewName("/ballc/ballcframe");
        return mv;
        }
    
   @RequestMapping(value="/addbyadmin",method=RequestMethod.GET)
   public ModelAndView getAddbyadmin(){
       ModelAndView mv = new ModelAndView();
       mv.setViewName("ballc/addbyadmin");
       return mv;
   }
   
   @RequestMapping(value="/addbyadmin",method=RequestMethod.POST)
   public String setAddbyadmin(@ModelAttribute("user") Ballcuser user){
       userService.create(user);
       return "redirect:/ballc/list";
   }
   
    @RequestMapping(value="/show/{userid}",method=RequestMethod.GET)
    public ModelAndView show(@PathVariable Long userid){
        Ballcuser user = userService.findOne(userid);
        
        ModelAndView mv = new ModelAndView();
        mv.addObject("user", user);
        mv.setViewName("ballc/detail");
        return mv;
    }
    
    @RequestMapping(value="/del/{userid}",method=RequestMethod.GET)
    public String del(@PathVariable Long userid){
        userService.deleteById(userid);
        
        return "redirect:/ballc/list";
    }
    
    @RequestMapping(value="/edit/{userid}",method=RequestMethod.GET)
    public ModelAndView getEdit(@PathVariable Long userid,Model model){
        Ballcuser user = userService.findOne(userid);
        model.addAttribute("userAttribute", user);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ballc/edit");
        return mv;
    }
    
    @RequestMapping(value="/save/{userid}",method=RequestMethod.POST)
    public String saveEdit(@ModelAttribute("userAttribute") Ballcuser user,@PathVariable Long userid){
        userService.update(user);
        return "redirect:/ballc/list";
    }
    
   /* @RequestMapping(value="/ask",method=RequestMethod.GET)
    public ModelAndView getAsk(ServletRequest req){
    	//Gson gson = new Gson();
    	List<Ballcevents> neweventlist=new ArrayList<Ballcevents>();
    	List<Ballcevents> sortedevent=new ArrayList<Ballcevents>();
    	BallcextendService extendService=new BallcextendService();
    	BallcmoduleoneService moduleoneService=new BallcmoduleoneService();
    	int eventlength;
    	int[][] eventweight;
    	int[][] suffix=new int[16][];
    	String[][][] showcontent=new String[16][11][];
    	int[][][] showstyle=new int[16][11][];
    	Long userid=Long.parseLong(req.getParameter("userid"));
       Ballcuser user = userService.findOne(userid);
       List<Ballcevents> allevents=eventsService.findAll();
       List<Ballccontrast> allcontrast=contrastService.findAll();
       neweventlist=extendService.extevents(allevents);
       eventlength=neweventlist.size();
       eventweight=new int[eventlength][7];
       eventweight=extendService.addweight(neweventlist,allcontrast);
       sortedevent=extendService.sortevent(neweventlist,eventweight);
       suffix=moduleoneService.makesuffix(sortedevent);
       showcontent=moduleoneService.modulize(sortedevent, suffix);
       showstyle=moduleoneService.moduleweight(sortedevent, eventweight, suffix);
       
       
       int eventlength=allevents.size();
       List<JsonElement> eventsobject=new ArrayList<JsonElement>();
       for(Ballcevents event:allevents){
    	   JsonElement eventelement=gson.toJsonTree(event);
    	   eventsobject.add(eventelement);
     		}
       
 		  ModelAndView mv= new ModelAndView();
		  int year=2017;
		  mv.addObject("year", year);
		  mv.addObject("user", user);
       mv.addObject("dimension","農業三生");
       mv.addObject("info","總結");
       mv.addObject("eventlength",eventlength);
       //mv.addObject("eventsobject",eventsobject);
       mv.addObject("showcontent",showcontent);
       mv.addObject("showstyle",showstyle);
      mv.setViewName("ballc/ballcframe");
    return mv;
}    
    @RequestMapping(value="/inputdispatcher",method=RequestMethod.GET)
    public ModelAndView getinputdispatcher(ServletRequest req){
    	Long userid=Long.parseLong(req.getParameter("userid"));
       Ballcuser user = userService.findOne(userid);
       String dimension=req.getParameter("dimension");
       String info=req.getParameter("info");
		  ModelAndView mv = new ModelAndView();
       mv.addObject("user", user);
       mv.addObject("dimension",dimension);
       mv.addObject("info",info);
      mv.setViewName("ballc/inputdispatcher");
    return mv;
}
    @RequestMapping(value="/eventlist",method=RequestMethod.POST)
    public ModelAndView getEventlist(ServletRequest req){
    	ModelAndView mv = new ModelAndView();
    	String statusreport="由水晶球進入";        
        mv=getCommonlist(req,statusreport);
        return mv;
        // "redirect:/ballc/commonlist";
    }
    //@RequestMapping(value="/commonlist")
    public ModelAndView getCommonlist(ServletRequest req,String statusreport){        
    	String userid=req.getParameter("userid");
        String dimension=req.getParameter("dimension");
        String info=req.getParameter("info");    	
        List<Ballcevents> eventList = eventsService.findAll();
        int eventlength=eventList.size();
        System.out.println("log======table 'user' all records:"+eventList.size());
        ModelAndView mv = new ModelAndView();
        mv.addObject("statusreport",statusreport);
        mv.addObject("year",2017);
        mv.addObject("userid", userid);
        mv.addObject("dimension",dimension);
        mv.addObject("info",info);
        mv.addObject("eventList", eventList);
        mv.addObject("eventlength", eventlength);
        mv.setViewName("ballc/eventlist");
        return mv;
    }
    @RequestMapping(value="/eventedit/{eventid}",method=RequestMethod.GET)
    public ModelAndView showevent(@PathVariable Long eventid,ServletRequest req, Model model){
        Ballcevents eventx = eventsService.findOne(eventid);
        String userid=req.getParameter("userid");
        String dimension=req.getParameter("dimension");
        String info=req.getParameter("info");
        ModelAndView mv = new ModelAndView();        
        mv.addObject("year",2017);
        mv.addObject("userid", userid);
        mv.addObject("dimension",dimension);
        mv.addObject("info",info);
        model.addAttribute("eventx", eventx);
        mv.setViewName("ballc/eventdetail");
        return mv;
    } 
    @RequestMapping(value="/backtolist",method=RequestMethod.GET)
    public ModelAndView getBacktlist(ServletRequest req){
    	ModelAndView mv = new ModelAndView();
    	String statusreport="由事件檢視回來";         
        mv=getCommonlist(req,statusreport);
        return mv;
        // "redirect:/ballc/commonlist";
    }

    @RequestMapping(value="/eventupdate/{eventid}",method=RequestMethod.POST)
    public ModelAndView saveEdit(@ModelAttribute("eventx") Ballcevents eventx,ServletRequest req,@PathVariable Long eventid){
    	eventsService.update(eventx);
    	ModelAndView mv = new ModelAndView();
    	String statusreport="編號"+eventid+"事件已更新儲存";        
        mv=getCommonlist(req,statusreport);
        return mv;
    }
    
    @RequestMapping(value="/eventdel/{eventid}",method=RequestMethod.GET)
    public ModelAndView delEvent(ServletRequest req,@PathVariable Long eventid){
    	eventsService.deleteById(eventid);;
    	ModelAndView mv = new ModelAndView();
    	String statusreport="編號"+eventid+"事件已從資料庫刪除";        
        mv=getCommonlist(req,statusreport);
        return mv;
    }
    @RequestMapping(value="/eventadd",method=RequestMethod.GET)
    public ModelAndView getAddevent(Model model,ServletRequest req){
        ModelAndView mv = new ModelAndView();
        String userid=req.getParameter("userid");
        String dimension=req.getParameter("dimension");
        String info=req.getParameter("info");
        model.addAttribute("newevent",new Ballcevents());
        mv.addObject("year",2017);
        mv.addObject("userid", userid);
        mv.addObject("dimension",dimension);
        mv.addObject("info",info);
        mv.setViewName("ballc/eventadd");
        return mv;
    }
    @RequestMapping(value="/eventsave",method=RequestMethod.POST)
    public ModelAndView savenewevent(@ModelAttribute("newevent") Ballcevents newevent,ServletRequest req){
        eventsService.create(newevent);
        ModelAndView mv = new ModelAndView();
    	String statusreport="新增事件已儲存";        
        mv=getCommonlist(req,statusreport);
        return mv;
    }*/
}