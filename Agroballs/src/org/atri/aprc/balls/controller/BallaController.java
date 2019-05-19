package org.atri.aprc.balls.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletRequest;

import org.atri.aprc.balls.model.Ballauser;
import org.atri.aprc.balls.service.IBallauserService;
import org.atri.aprc.balls.service.ICommonentityService;
import org.atri.aprc.balls.service.IDbdic1Service;
//import org.atri.aprc.balls.service.impl.Readjson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/balla")
public class BallaController {

    @Resource(name="ballauserService")
    private IBallauserService userService;
    
    @Resource(name="dbdic1Service")
    private IDbdic1Service dbdic1Service;
    
    @Resource(name="commonentityService")
    private ICommonentityService commonentityService;
    
    /*@Resource(name="readjson")
    private Readjson readjson;*/
    
    @RequestMapping(value="/start",method=RequestMethod.GET)
    public ModelAndView getStart(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("balla/ballaentry");
        return mv;
   }
    
    @RequestMapping(value="/loginaction",method=RequestMethod.POST)
    public ModelAndView setLogin(@ModelAttribute("user") Ballauser loginer){	        
        ModelAndView mv = new ModelAndView();
        String account = loginer.getAccount();
        List<Ballauser> userList = userService.findAll();
        if(account.equals("ballaadmin")&&loginer.getPassword().equals("hjt6767doc")){
        	mv.addObject("userList", userList);
        	mv.setViewName("balla/list");
        	return mv;
        	//return "redirect:/balla/list";
        }//Eof 1st if
        else {
        	//RedirectAttributes redAtt = null;
        	for(Ballauser userx: userList){
           	if(account.equalsIgnoreCase(userx.getAccount())){           		
           		Long userid=userx.getId();
           		//redAtt.addAttribute("user", userx);
           		//mv.addObject("product","香蕉");
               // mv.addObject("info","燈號");
           		//Ballauser user=userx;
               //return "redirect:/balla/ask";
              	mv.setViewName("redirect:/balla/ask?userid="+userid);
    	        return mv;
           		}//Eof 2nd if
           	else{
    	        	continue;}//Eof 2nd else       		
           			  				}//Eof for 
        }//Eof 1st else
        	mv.setViewName("balla/add");
	        return mv;
        //return "redirect:/balla/add";
        }
    
    @RequestMapping(value="/count",method=RequestMethod.GET)
    public ModelAndView userCount() {
        
        int count = userService.findAll().size();
        
        ModelAndView mv = new ModelAndView();
        mv.addObject("userCount", count);
        mv.setViewName("balla/userCount");
        return mv;
    }
    
    @RequestMapping(value="/list",method=RequestMethod.GET)
    public ModelAndView getUserlist(Model model){        
        ModelAndView mv = new ModelAndView();
        List<Ballauser> userList = userService.findAll();
        System.out.println("log======table 'user' all records:"+userList.size());
       /*
        Iterator<Ballauser> iterator=userList.iterator();
        synchronized (userList){
        for(Ballauser userx: userList){
        	if(userx.getAccount().equalsIgnoreCase("ballaadmin")){
        iterator.remove();
        	}
        }
        }
        */
        mv.addObject("userList", userList);
        mv.setViewName("balla/list");
        return mv;
    }
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public ModelAndView getAdd(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("balla/add");
        return mv;
    }
    
   @RequestMapping(value="/addsuccess",method=RequestMethod.POST)
    public ModelAndView setAddsuccess(@ModelAttribute("user") Ballauser newuser){        
    	ModelAndView mv = new ModelAndView();
    	newuser.setRights("asker");
    	userService.create(newuser);
    	Long userid=newuser.getId();
    	mv.addObject("user", newuser);    	
    	//mv.addObject("product","香蕉");
      //mv.addObject("info","燈號");
    	//Ballauser user=newuser;
      //return "redirect:/balla/ask";
     mv.setViewName("redirect:/balla/ask?userid="+userid);
    	//mv.setViewName("/balla/ballframe");
        return mv;
        }
    
   @RequestMapping(value="/addbyadmin",method=RequestMethod.GET)
   public ModelAndView getAddbyadmin(){
       ModelAndView mv = new ModelAndView();
       mv.setViewName("balla/addbyadmin");
       return mv;
   }
   
   @RequestMapping(value="/addbyadmin",method=RequestMethod.POST)
   public String setAddbyadmin(@ModelAttribute("user") Ballauser user){
       userService.create(user);
       return "redirect:/balla/list";
   }
   
    @RequestMapping(value="/show/{userid}",method=RequestMethod.GET)
    public ModelAndView show(@PathVariable Long userid){
        Ballauser user = userService.findOne(userid);
        
        ModelAndView mv = new ModelAndView();
        mv.addObject("user", user);
        mv.setViewName("balla/detail");
        return mv;
    }
    
    @RequestMapping(value="/del/{userid}",method=RequestMethod.GET)
    public String del(@PathVariable Long userid){
        userService.deleteById(userid);
        
        return "redirect:/balla/list";
    }
    
    @RequestMapping(value="/edit/{userid}",method=RequestMethod.GET)
    public ModelAndView getEdit(@PathVariable Long userid,Model model){
        Ballauser user = userService.findOne(userid);
        model.addAttribute("userAttribute", user);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("balla/edit");
        return mv;
    }
    
    @RequestMapping(value="/save/{userid}",method=RequestMethod.POST)
    public String saveEdit(@ModelAttribute("userAttribute") Ballauser user,@PathVariable Long userid){
        userService.update(user);
        return "redirect:/balla/list";
    }
    
    @RequestMapping(value="/ask",method=RequestMethod.GET)
    public ModelAndView getAsk(ServletRequest req){
    	Long userid=Long.parseLong(req.getParameter("userid"));
       Ballauser user = userService.findOne(userid);
		  ModelAndView mv = new ModelAndView();
       mv.addObject("user", user);
       mv.addObject("product","香蕉");
       mv.addObject("info","燈號及總結");
      mv.setViewName("balla/ballaframe");
    return mv;
}    
    @RequestMapping(value="/inputdispatcher",method=RequestMethod.GET)
    public ModelAndView getinputdispatcher(ServletRequest req){
    	Long userid=Long.parseLong(req.getParameter("userid"));
       Ballauser user = userService.findOne(userid);
       String product=req.getParameter("product");
       String info=req.getParameter("info");
		  ModelAndView mv = new ModelAndView();
       mv.addObject("user", user);
       mv.addObject("product",product);
       mv.addObject("info",info);
      mv.setViewName("balla/inputdispatcher");
    return mv;
}  
    @RequestMapping(value="/getbydataname",method=RequestMethod.POST)
    public ModelAndView getgetbydataname(ServletRequest req) throws IOException{
    	Long userid=Long.parseLong(req.getParameter("userid"));
       Ballauser user = userService.findOne(userid);
       String product=req.getParameter("product");
       String info=req.getParameter("info");
       String urlstr=req.getParameter("dataurl");
       //InputStreamReader infile=readjson.getinfile(urlstr);
       //List<Map<String,String>> arraynoquotejs=readjson.readjsstrings(infile);
       //String[] varnames=readjson.getvarnames(arraynoquotejs);
		  ModelAndView mv = new ModelAndView();
       mv.addObject("user", user);
       mv.addObject("product",product);
       mv.addObject("info",info);
      mv.setViewName("balla/ballframe");
    return mv;
}          
}