package org.atri.aprc.balls.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="tbballbevents")
public class Ballbevents  implements Serializable {
    
    private static final long serialVersionUID =1L;

    public Ballbevents(){
        super();
    }
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	private int a01year;
	private String a02timespan;
	private String a03datumnameen;
	
	//@NotBlank(message="{NotBlank}")
	private String a04datumnamech;
	private String a05datum;
	private String a06datumunit;
	private String a07datumnote;
	private String a08dimension;
	private String a09aspect;
	private String a10possibility;
	private String a11areacover;
	private String a12relative;	
	private String a13impactto1;
	private String a14impactsign1;
	private String a15impactto2;
	private String a16impactsign2;
	private String a17impactto3;
	private String a18impactsign3;	
	private String a19special;
	private String a20source;
//@ManyToMany (fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
//@JoinTable(name="tb_user_plan",joinColumns=@JoinColumn(name="user_id",referencedColumnName="id"),inverseJoinColumns=@JoinColumn(name="plan_id",referencedColumnName="id"))
	/*
	@OneToMany (fetch=FetchType.EAGER,targetEntity=Ocosaplan.class,cascade={CascadeType.PERSIST,CascadeType.REMOVE,CascadeType.MERGE,CascadeType.REFRESH})
	@JoinColumns(value={@JoinColumn(name="ocosauser_id",referencedColumnName="id")})
	private Set<Ocosaplan> editableplans=new HashSet<Ocosaplan>() ;
	*/
	public Long getId(){
		return id;
	}	
	public void setId(Long id){
		this.id=id;
	}
	public int getA01year() {
		return a01year;
	}
	public void setA01year(int a01year) {
		this.a01year = a01year;
	}
	public String getA02timespan() {
		return a02timespan;
	}
	public void setA02timespan(String a02timespan) {
		this.a02timespan = a02timespan;
	}
	public String getA03datumnameen() {
		return a03datumnameen;
	}
	public void setA03datumnameen(String a03datumnameen) {
		this.a03datumnameen = a03datumnameen;
	}
	public String getA04datumnamech() {
		return a04datumnamech;
	}
	public void setA04datumnamech(String a04datumnamech) {
		this.a04datumnamech = a04datumnamech;
	}
	public String getA05datum() {
		return a05datum;
	}
	public void setA05datum(String a05datum) {
		this.a05datum = a05datum;
	}
	public String getA06datumunit() {
		return a06datumunit;
	}
	public void setA06datumunit(String a06datumunit) {
		this.a06datumunit = a06datumunit;
	}
	public String getA07datumnote() {
		return a07datumnote;
	}
	public void setA07datumnote(String a07datumnote) {
		this.a07datumnote = a07datumnote;
	}
	public String getA08dimension() {
		return a08dimension;
	}
	public void setA08dimension(String a08dimension) {
		this.a08dimension = a08dimension;
	}
	public String getA09aspect() {
		return a09aspect;
	}
	public void setA09aspect(String a09aspect) {
		this.a09aspect = a09aspect;
	}
	public String getA10possibility() {
		return a10possibility;
	}
	public void setA10possibility(String a10possibility) {
		this.a10possibility = a10possibility;
	}
	public String getA11areacover() {
		return a11areacover;
	}
	public void setA11areacover(String a11areacover) {
		this.a11areacover = a11areacover;
	}
	public String getA12relative() {
		return a12relative;
	}
	public void setA12relative(String a12relative) {
		this.a12relative = a12relative;
	}
	public String getA13impactto1() {
		return a13impactto1;
	}
	public void setA13impactto1(String a13impactto1) {
		this.a13impactto1 = a13impactto1;
	}
	public String getA14impactsign1() {
		return a14impactsign1;
	}
	public void setA14impactsign1(String a14impactsign1) {
		this.a14impactsign1 = a14impactsign1;
	}
	public String getA15impactto2() {
		return a15impactto2;
	}
	public void setA15impactto2(String a15impactto2) {
		this.a15impactto2 = a15impactto2;
	}
	public String getA16impactsign2() {
		return a16impactsign2;
	}
	public void setA16impactsign2(String a16impactsign2) {
		this.a16impactsign2 = a16impactsign2;
	}
	public String getA17impactto3() {
		return a17impactto3;
	}
	public void setA17impactto3(String a17impactto3) {
		this.a17impactto3 = a17impactto3;
	}
	public String getA18impactsign3() {
		return a18impactsign3;
	}
	public void setA18impactsign3(String a18impactsign3) {
		this.a18impactsign3 = a18impactsign3;
	}
	public String getA19special() {
		return a19special;
	}
	public void setA19special(String a19special) {
		this.a19special = a19special;
	}
	public String getA20source() {
		return a20source;
	}
	public void setA20source(String a20source) {
		this.a20source = a20source;
	}
	
}
