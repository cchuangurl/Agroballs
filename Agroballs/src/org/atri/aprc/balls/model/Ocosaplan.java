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
@Table (name="tbocosaplan")
public class Ocosaplan implements Serializable {
	private static final long serialVersionUID =1L;
	
	public Ocosaplan(){
        super();
    }
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String plancode;
	private String planpw;
	private String owner;
	private String shareto;
	
	//@ManyToMany (fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
	//@JoinTable(mappedBy="editableplans")
	//private Set<Ocosauser> authusers=new HashSet<Ocosauser>();
	public Long getId(){
		return id;
	}	
	public void setId(Long id){
		this.id=id;
	}
	
	
	public String getPlancode() {
		return plancode;
	}
	public void setPlancode(String plancode) {
		this.plancode = plancode;
	}
	public String getPlanpw(){
		return planpw;
	}	
	public void setPlanpw(String planpw){
		this.planpw=planpw;
	}
	
	public String getOwner(){
		return owner;
	}	
	public void setOwner(String owner){
		this.owner=owner;
	}
	public String getShareto() {
		return shareto;
	}
	public void setShareto(String shareto) {
		this.shareto = shareto;
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
