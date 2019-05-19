package org.atri.aprc.balls.service;

import java.util.List;

import org.atri.aprc.balls.model.Ballbcontrast;
import org.atri.aprc.balls.model.Ballbevents;

//@Repository("ballbextend")
public interface IBallbextendService{	
	List<Ballbevents> extevents(List<Ballbevents> allevents);
	int[][] addweight(List<Ballbevents> events,List<Ballbcontrast> allcontrast);
	int[][] sortindex(int[][] addweight);
	List<Ballbevents> sortevent(List<Ballbevents> events,int[][] sortedindex);
	int[][] sortweight(int[][] eventweight,int[][] sortedindex);	
}