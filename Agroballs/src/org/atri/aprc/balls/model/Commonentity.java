package org.atri.aprc.balls.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="tbdataset1")
public class Commonentity  implements Serializable {
    
    private static final long serialVersionUID =1L;

    public Commonentity(){
        super();
    }
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String entityname;
	private String tbnameen;
	
	private String var01;
	private String var02;
	private String var03;
	private String var04;
	private String var05;
	private String var06;
	private String var07;
	private String var08;
	private String var09;
	private String var10;
	private String var11;
	private String var12;
	private String var13;
	private String var14;
	private String var15;
	private String var16;
	private String var17;
	private String var18;
	private String var19;
	private String var20;
	private String var21;
	private String var22;
	private String var23;
	private String var24;
	private String var25;
	private String var26;
	private String var27;
	private String var28;
	private String var29;
	private String var30;
	private String var31;
	private String var32;
	private String var33;
	private String var34;
	private String var35;
	private String var36;
	private String var37;
	private String var38;
	private String var39;
	private String var40;
	private String var41;
	private String var42;
	private String var43;
	private String var44;
	private String var45;
	private String var46;
	private String var47;
	private String var48;
	private String var49;
	private String var50;
	
		
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
		
}
