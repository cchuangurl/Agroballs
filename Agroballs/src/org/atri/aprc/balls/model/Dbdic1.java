package org.atri.aprc.balls.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="tbballauser")
public class Dbdic1  implements Serializable {
    
    private static final long serialVersionUID =1L;

    public Dbdic1(){
        super();
    }
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String entityname;
	private String tbnameen;
	private String tbnamech;
	private String tbnote;
	
	private String varoriname01;
	private String varoriname02;
	private String varoriname03;
	private String varoriname04;
	private String varoriname05;
	private String varoriname06;
	private String varoriname07;
	private String varoriname08;
	private String varoriname09;
	private String varoriname10;
	private String varoriname11;
	private String varoriname12;
	private String varoriname13;
	private String varoriname14;
	private String varoriname15;
	private String varoriname16;
	private String varoriname17;
	private String varoriname18;
	private String varoriname19;
	private String varoriname20;
	private String varoriname21;
	private String varoriname22;
	private String varoriname23;
	private String varoriname24;
	private String varoriname25;
	private String varoriname26;
	private String varoriname27;
	private String varoriname28;
	private String varoriname29;
	private String varoriname30;
	private String varoriname31;
	private String varoriname32;
	private String varoriname33;
	private String varoriname34;
	private String varoriname35;
	private String varoriname36;
	private String varoriname37;
	private String varoriname38;
	private String varoriname39;
	private String varoriname40;
	private String varoriname41;
	private String varoriname42;
	private String varoriname43;
	private String varoriname44;
	private String varoriname45;
	private String varoriname46;
	private String varoriname47;
	private String varoriname48;
	private String varoriname49;
	private String varoriname50;
	
	private String vardescrib01;
	private String vardescrib02;
	private String vardescrib03;
	private String vardescrib04;
	private String vardescrib05;
	private String vardescrib06;
	private String vardescrib07;
	private String vardescrib08;
	private String vardescrib09;
	private String vardescrib10;
	private String vardescrib11;
	private String vardescrib12;
	private String vardescrib13;
	private String vardescrib14;
	private String vardescrib15;
	private String vardescrib16;
	private String vardescrib17;
	private String vardescrib18;
	private String vardescrib19;
	private String vardescrib20;
	private String vardescrib21;
	private String vardescrib22;
	private String vardescrib23;
	private String vardescrib24;
	private String vardescrib25;
	private String vardescrib26;
	private String vardescrib27;
	private String vardescrib28;
	private String vardescrib29;
	private String vardescrib30;
	private String vardescrib31;
	private String vardescrib32;
	private String vardescrib33;
	private String vardescrib34;
	private String vardescrib35;
	private String vardescrib36;
	private String vardescrib37;
	private String vardescrib38;
	private String vardescrib39;
	private String vardescrib40;
	private String vardescrib41;
	private String vardescrib42;
	private String vardescrib43;
	private String vardescrib44;
	private String vardescrib45;
	private String vardescrib46;
	private String vardescrib47;
	private String vardescrib48;
	private String vardescrib49;
	private String vardescrib50;
	
	private String varnote01;
	private String varnote02;
	private String varnote03;
	private String varnote04;
	private String varnote05;
	private String varnote06;
	private String varnote07;
	private String varnote08;
	private String varnote09;
	private String varnote10;
	private String varnote11;
	private String varnote12;
	private String varnote13;
	private String varnote14;
	private String varnote15;
	private String varnote16;
	private String varnote17;
	private String varnote18;
	private String varnote19;
	private String varnote20;
	private String varnote21;
	private String varnote22;
	private String varnote23;
	private String varnote24;
	private String varnote25;
	private String varnote26;
	private String varnote27;
	private String varnote28;
	private String varnote29;
	private String varnote30;
	private String varnote31;
	private String varnote32;
	private String varnote33;
	private String varnote34;
	private String varnote35;
	private String varnote36;
	private String varnote37;
	private String varnote38;
	private String varnote39;
	private String varnote40;
	private String varnote41;
	private String varnote42;
	private String varnote43;
	private String varnote44;
	private String varnote45;
	private String varnote46;
	private String varnote47;
	private String varnote48;
	private String varnote49;
	private String varnote50;
	
	public Long getId(){
		return id;
	}	
	public void setId(Long id){
		this.id=id;
	}
	public String getEntityname(){
		return entityname;
	}	
	public void setEntityname(String entityname){
		this.entityname=entityname;
	}
	
	public String getTbnameen(){
		return tbnameen;
	}	
	public void setTbnameen(String tbnameen){
		this.tbnameen=tbnameen;
	}
	
	public String getTbnamech(){
		return tbnamech;
	}	
	public void setTbnamech(String tbnamech){
		this.tbnamech=tbnamech;
	}
	public String getTbnote(){
		return tbnote;
	}	
	public void setTbnote(String right){
		this.tbnote=right;
	}
}
