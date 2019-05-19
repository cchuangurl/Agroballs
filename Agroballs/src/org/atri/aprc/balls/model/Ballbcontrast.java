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
@Table (name="tbballbcontrast")
public class Ballbcontrast implements Serializable {
    
    private static final long serialVersionUID =4L;

    public Ballbcontrast(){
        super();
    }
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private String b1variable;
	private String b2nameen;
	private String b3namech;
	private String b4weight;

	public String getB1variable() {
		return b1variable;
	}
	public void setB1variable(String b1variable) {
		this.b1variable = b1variable;
	}
	public String getB2nameen() {
		return b2nameen;
	}
	public void setB2nameen(String b2nameen) {
		this.b2nameen = b2nameen;
	}
	public String getB3namech() {
		return b3namech;
	}
	public void setB3namech(String b3namech) {
		this.b3namech = b3namech;
	}
	public String getB4weight() {
		return b4weight;
	}
	public void setB4weight(String b4weight) {
		this.b4weight = b4weight;
	}

}
