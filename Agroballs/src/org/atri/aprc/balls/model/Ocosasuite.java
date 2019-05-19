package org.atri.aprc.balls.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table (name="tbocosasuite")
public class Ocosasuite implements Serializable {
	private static final long serialVersionUID =1L;
	
	public Ocosasuite(){
        super();
    }
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String plancode;
	private String actionverb;
	private String action;
	private String actioncode;
	private String actioner;
	private String coactioner;
	private String budget;
	private String manpower;
	private String startyear;
	private String startmonth;
	private String startday;
	private String pertime;
	private String interv;
	private String times;
	private String dateline;
	private String endyear;
	private String endmonth;
	private String endday;
	private String benetype;
	private String beneunit;
	private String benefigure;
	private String uppercode;
	//@ManyToMany (fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
	//@JoinTable(mappedBy="editableplans")
	//private Set<Ocosauser> authusers=new HashSet<Ocosauser>();
	public Long getId(){
		return id;
	}	
	public void setId(Long id){
		this.id=id;
	}
			
	public String getPlancode(){
		return plancode;
	}	
	public void setPlancode(String plancode){
		this.plancode=plancode;
	}
	
	public String getActionverb() {
		return actionverb;
	}
	public void setActionverb(String actionverb) {
		this.actionverb = actionverb;
	}

	public String getAction(){
		return action;
	}	
	public void setAction(String action){
		this.action=action;
	}
	
	public String getActioncode(){
		return actioncode;
	}	
	public void setActioncode(String actioncode){
		this.actioncode=actioncode;
	}
	
	public String getActioner(){
		return actioner;
	}	
	public void setActioner(String actioner){
		this.actioner=actioner;
	}
	
	public String getCoactioner(){
		return coactioner;
	}	
	public void setCoactioner(String coactioner){
		this.coactioner=coactioner;
	}
	
	public String getBudget(){
		return budget;
	}	
	public void setBudget(String budget){
		this.budget=budget;
	}
	
	public String getManpower(){
		return manpower;
	}	
	public void setManpower(String manpower){
		this.manpower=manpower;
	}
	public String getStartyear(){
		return startyear;
	}	
	public void setStartyear(String startyear){
		this.startyear=startyear;
	}
	
	public String getStartmonth(){
		return startmonth;
	}	
	public void setStartmonth(String startmonth){
		this.startmonth=startmonth;
	}
	
	public String getStartday(){
		return startday;
	}	
	public void setStartday(String startday){
		this.startday=startday;
	}
	
	public String getPertime(){
		return pertime;
	}	
	public void setPertime(String pertime){
		this.pertime=pertime;
	}
	
	public String getInterv(){
		return interv;
	}	
	public void setInterv(String interv){
		this.interv=interv;
	}
	
	public String getTimes(){
		return times;
	}	
	public void setTimes(String times){
		this.times=times;
	}
	
	public String getDateline(){
		return dateline;
	}	
	public void setDateline(String dateline){
		this.dateline=dateline;
	}
	public String getEndyear(){
		return endyear;
	}	
	public void setEndyear(String endyear){
		this.endyear=endyear;
	}
	
	public String getEndmonth(){
		return endmonth;
	}	
	public void setEndmonth(String endmonth){
		this.endmonth=endmonth;
	}
	
	public String getEndday(){
		return endday;
	}	
	public void setEndday(String endday){
		this.endday=endday;
	}
	public String getBenetype(){
		return benetype;
	}	
	public void setBenetype(String benetype){
		this.benetype=benetype;
	}
	public String getBeneunit(){
		return beneunit;
	}	
	public void setBeneunit(String beneunit){
		this.beneunit=beneunit;
	}
	
	public String getBenefigure(){
		return benefigure;
	}	
	public void setBenefigure(String benefigure){
		this.benefigure=benefigure;
	}	
	
	public String getUppercode(){
		return uppercode;
	}	
	public void setUppercode(String uppercode){
		this.uppercode=uppercode;
	}
	
}

