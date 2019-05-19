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
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="tbocosauser")
public class Ocosauser  implements Serializable {
    
    private static final long serialVersionUID =1L;

    public Ocosauser(){
        super();
    }
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String realname;
	private String password;
	private String account;
	private String rights;

	//@ManyToMany (fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
//@JoinTable(name="tb_user_plan",joinColumns=@JoinColumn(name="user_id",referencedColumnName="id"),inverseJoinColumns=@JoinColumn(name="plan_id",referencedColumnName="id"))
	@OneToMany (fetch=FetchType.EAGER,targetEntity=Ocosaplan.class,cascade={CascadeType.PERSIST,CascadeType.REMOVE,CascadeType.MERGE,CascadeType.REFRESH})
	@JoinColumns(value={@JoinColumn(name="ocosauser_id",referencedColumnName="id")})
	private Set<Ocosaplan> editableplans=new HashSet<Ocosaplan>() ;
	
	public Long getId(){
		return id;
	}	
	public void setId(Long id){
		this.id=id;
	}
	public String getRealname(){
		return realname;
	}	
	public void setRealname(String realname){
		this.realname=realname;
	}
	
	public String getPassword(){
		return password;
	}	
	public void setPassword(String password){
		this.password=password;
	}
	
	public String getAccount(){
		return account;
	}	
	public void setAccount(String account){
		this.account=account;
	}
	public String getRights() {
		return rights;
	}
	public void setRights(String rights) {
		this.rights = rights;
	}
	
	public Set<Ocosaplan> getEditableplans(){
		return editableplans;
	}
	
	public void setEditableplans(Set<Ocosaplan> editableplans){
		this.editableplans=editableplans;
	}

}
