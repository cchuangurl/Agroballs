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
@Table (name="tbocosacontent")
public class Ocosacontent implements Serializable {
	private static final long serialVersionUID =1L;
	
	public Ocosacontent(){
        super();
    }
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private String supercode;
	private String planname;
	private String plancode;
	private String statetype;
	private String verb;
	private String state;
	private String swottype;
	private String statecode;
	private String stateprior;
	private String statecheck;	
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
	public String getSupercode(){
		return supercode;
	}	
	public void setSupercode(String supercode){
		this.supercode=supercode;
	}
	
	public String getPlanname(){
		return planname;
	}	
	public void setPlanname(String planname){
		this.planname=planname;
	}
	
	public String getPlancode(){
		return plancode;
	}	
	public void setPlancode(String plancode){
		this.plancode=plancode;
	}
	public String getStatetype(){
		return statetype;
	}	
	public void setStatetype(String statetype){
		this.statetype=statetype;
	}
	public String getVerb() {
		return verb;
	}
	public void setVerb(String verb) {
		this.verb = verb;
	}
	public String getState(){
		return state;
	}	
	public void setState(String state){
		this.state=state;
	}
	public String getSwottype() {
		return swottype;
	}
	public void setSwottype(String swottype) {
		this.swottype = swottype;
	}
	public String getStatecode(){
		return statecode;
	}	
	public void setStatecode(String statecode){
		this.statecode=statecode;
	}
	public String getStateprior(){
		return stateprior;
	}	
	public void setStateprior(String stateprior){
		this.stateprior=stateprior;
	}
	public String getStatecheck(){
		return statecheck;
	}	
	public void setStatecheck(String statecheck){
		this.statecheck=statecheck;
	}
	public String getUppercode(){
		return uppercode;
	}	
	public void setUppercode(String uppercode){
		this.uppercode=uppercode;
	}
	/*
	public Set<Ocosauser> getAuthusers(){
		return authusers;
	}
	
	public void setAuthusers(Set<Ocosauser> authusers){
		this.authusers=authusers;
	}
	*/
}
