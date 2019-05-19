package org.atri.aprc.balls.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import org.atri.aprc.balls.model.Ballbcontrast;
import org.atri.aprc.balls.model.Ballbevents;
import org.atri.aprc.balls.service.IBallbextendService;
import org.springframework.stereotype.Service;
@Service("ballbextendService")
public class BallbextendService implements IBallbextendService{
	public List<Ballbevents> extevents(List<Ballbevents> allevents) {
		List<Ballbevents> neweventlist=new ArrayList<Ballbevents>();
		//Ballbevents extevent=new Ballbevents();
		int datumyear,extyear,i;
		for(Ballbevents event:allevents){
			String timespan=event.getA02timespan();
			datumyear=event.getA01year();
			switch(timespan){				
				case "0":break;
				case "1":break;
				case "99":
					extyear=2032-datumyear;
				for(i=1;i<(extyear+1);i++){
					Ballbevents extevent=new Ballbevents();
						extevent.setA01year(datumyear+i);
						extevent.setA04datumnamech(event.getA04datumnamech());
						extevent.setA05datum(event.getA05datum());
						extevent.setA06datumunit(event.getA06datumunit());
						extevent.setA08dimension(event.getA08dimension());
						extevent.setA09aspect(event.getA09aspect());
						extevent.setA10possibility(event.getA10possibility());
						extevent.setA11areacover(event.getA11areacover());
						extevent.setA19special(event.getA19special());
						switch(event.getA12relative()){
						case "strong":extevent.setA12relative("high");break;
						case "high":extevent.setA12relative("medium");break;
						default:extevent.setA12relative("low");
						}
						neweventlist.add(extevent);
					}
					break;
				default:					
					extyear=Integer.parseInt(event.getA02timespan());
					for(i=1;i<(extyear+1);i++){
						Ballbevents extevent=new Ballbevents();
						extevent.setA01year(event.getA01year()+i);						
						extevent.setA04datumnamech(event.getA04datumnamech());
						extevent.setA05datum(event.getA05datum());
						extevent.setA06datumunit(event.getA06datumunit());
						extevent.setA08dimension(event.getA08dimension());
						extevent.setA09aspect(event.getA09aspect());
						extevent.setA10possibility(event.getA10possibility());
						extevent.setA11areacover(event.getA11areacover());
						extevent.setA12relative(event.getA12relative());
						extevent.setA19special(event.getA19special());
						neweventlist.add(extevent);
					}
					break;
					}//E of switch
		}//E of outer for
		allevents.addAll(neweventlist);
		return allevents;
	}

	@Override
	public int[][] addweight(List<Ballbevents> events, List<Ballbcontrast> allcontrast) {
		int eventlength=events.size();
		int l1=0,l2=0,l3=0;
		String[][] possibility=new String[2][7];
		String[][] areacover=new String[2][6];
		String[][] relative=new String[2][4];
		for(Ballbcontrast contrast:allcontrast){
			switch(contrast.getB1variable()){
			case "a10possibility":
				possibility[0][l1]=contrast.getB2nameen();
				possibility[1][l1]=contrast.getB4weight().substring(0,2);
				l1++;
				break;
			case "a11areacover":
				areacover[0][l2]=contrast.getB2nameen();
				areacover[1][l2]=contrast.getB4weight().substring(0,2);
				l2++;
				break;
			case "a12relative":
				relative[0][l3]=contrast.getB2nameen();
				relative[1][l3]=contrast.getB4weight().substring(0,2);
				l3++;
				break;
			}
		}
		int[][] eventweight=new int[eventlength][7];
		int i=0;
		for(Ballbevents event:events){
			switch(event.getA10possibility()){
			case "statistic":
				eventweight[i][0]=Integer.parseInt(possibility[1][0]);
				break;
			case "estimate":
				eventweight[i][0]=Integer.parseInt(possibility[1][1]);
				break;
			case "program":
				eventweight[i][0]=Integer.parseInt(possibility[1][2]);
				break;
			case "goal":
				eventweight[i][0]=Integer.parseInt(possibility[1][3]);
				break;
			case "planning":
				eventweight[i][0]=Integer.parseInt(possibility[1][4]);
				break;
			case "prediction":
				eventweight[i][0]=Integer.parseInt(possibility[1][5]);
				break;
			case "possible":
				eventweight[i][0]=Integer.parseInt(possibility[1][6]);
				break;						
			}//E of switch getA10possibility
			switch(event.getA11areacover()){
			case "worldwide":
				eventweight[i][1]=Integer.parseInt(areacover[1][0]);
				break;
			case "trans-nation":
				eventweight[i][1]=Integer.parseInt(areacover[1][1]);
				break;
			case "inter-nation":
				eventweight[i][1]=Integer.parseInt(areacover[1][2]);
				break;
			case "nationwide":
				eventweight[i][1]=Integer.parseInt(areacover[1][3]);
				break;
			case "region":
				eventweight[i][1]=Integer.parseInt(areacover[1][4]);
				break;
			case "county":
				eventweight[i][1]=Integer.parseInt(areacover[1][5]);
				break;				
			}//E of switch getA11areacover
			switch(event.getA12relative()){
			case "strong":
				eventweight[i][2]=65;
				break;
			case "high":
				eventweight[i][2]=50;
				break;
			case "medium":
				eventweight[i][2]=35;
				break;
			case "low":
				eventweight[i][2]=20;
				break;
			}//E of switch getA12relative
			eventweight[i][3]=eventweight[i][0]+eventweight[i][1]+eventweight[i][2];
			if(eventweight[i][3]>160){
				eventweight[i][4]=1;	
			}else if(eventweight[i][3]<=160&&eventweight[i][3]>120){
				eventweight[i][4]=2;
			}else if (eventweight[i][3]<=120&&eventweight[i][3]>80){
				eventweight[i][4]=3;
			}else{
				eventweight[i][4]=4;
			}
			eventweight[i][5]=i;
			i++;
		}//E of for	events
		Arrays.sort(eventweight, new Comparator<int[]> () {
			public int compare(int[] x, int[] y) {
			int m = 0, n = 0;
			m = x[3];
			n = y[3];
			return n - m; //or 要由小到大 m-n
			}
			});
		for(i=0;i<eventweight.length;i++){
			eventweight[i][6]=i;
		}
		return eventweight;
	}

	@Override
	public int[][] sortindex(int[][] eventweight) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Ballbevents> sortevent(List<Ballbevents> events, int[][] eventweight) {
		List<Ballbevents> sortedevent=new ArrayList<Ballbevents>();
		for(int i=0;i<events.size();i++){
		sortedevent.add(events.get(eventweight[i][5]));
		}		
		// TODO Auto-generated method stub
		return sortedevent;
	}

	@Override
	public int[][] sortweight(int[][] eventweight,int[][] sortedindex) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
}
