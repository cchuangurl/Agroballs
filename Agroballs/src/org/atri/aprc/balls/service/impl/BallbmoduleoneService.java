package org.atri.aprc.balls.service.impl;

import java.util.List;

import org.atri.aprc.balls.model.Ballbevents;
import org.atri.aprc.balls.service.IBallbmoduleoneService;
import org.springframework.stereotype.Service;

@Service("ballbmoduleoneService")
public class BallbmoduleoneService implements IBallbmoduleoneService {
	
	@Override	
	public int[][] makesuffix(List<Ballbevents> allevents){
		int i=0;
		int[][] tempsuf=new int[16][400];
		int[][] suffix=new int[16][];
		int[] s=new int[16];
		for(int t=0;t<16;t++){
			s[t]=0;
			}
		
		for(Ballbevents event:allevents){
			switch(event.getA01year()){
				case 2017:
					tempsuf[0][s[0]]=i;
					s[0]++;
					break;
				case 2018:
					tempsuf[1][s[1]]=i;
					s[1]++;
					break;
				case 2019:
					tempsuf[2][s[2]]=i;
					s[2]++;
					break;
				case 2020:
					tempsuf[3][s[3]]=i;
					s[3]++;
					break;
				case 2021:
					tempsuf[4][s[4]]=i;
					s[4]++;	
					break;
				case 2022:
					tempsuf[5][s[5]]=i;
					s[5]++;
					break;
				case 2023:
					tempsuf[6][s[6]]=i;
					s[6]++;				
					break;
				case 2024:
					tempsuf[7][s[7]]=i;
					s[7]++;				
					break;
				case 2025:
					tempsuf[8][s[8]]=i;
					s[8]++;			
					break;
				case 2026:
					tempsuf[9][s[9]]=i;
					s[9]++;				
					break;
				case 2027:
					tempsuf[10][s[10]]=i;
					s[10]++;				
					break;
				case 2028:
					tempsuf[11][s[11]]=i;
					s[11]++;				
					break;
				case 2029:
					tempsuf[12][s[12]]=i;
					s[12]++;				
					break;
				case 2030:
					tempsuf[13][s[13]]=i;
					s[13]++;					
					break;
				case 2031:
					tempsuf[14][s[14]]=i;
					s[14]++;				
					break;
				case 2032:
					tempsuf[15][s[15]]=i;
					s[15]++;					
				break;
			}//E of switch
			i++;
		}//E of for
		for(int t=0;t<16;t++){
			suffix[t]=new int[s[t]];
			for(int q=0;q<s[t];q++){
				suffix[t][q]=tempsuf[t][q];
			}
			}		
		return suffix;
	}
	@Override
	public String[][][] modulize(List<Ballbevents> allevents,int[][] suffix) {
		int[] s=new int[16];
		String[][][] module=new String[16][11][];
		String[][][] tempmodule=new String[16][11][400];
		int[][] m=new int[16][11];		
		for(int t=0;t<16;t++){
			s[t]=suffix[t].length;
			for(int r=0;r<11;r++){
				m[t][r]=0;
			}
			for(int q=0;q<s[t];q++){				
				Ballbevents event=allevents.get(suffix[t][q]);
				if(!("0".equalsIgnoreCase(event.getA19special()))){
					tempmodule[t][0][m[t][0]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
					m[t][0]++;
				}
			switch(event.getA08dimension()){
				case "factor":
					tempmodule[t][1][m[t][1]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
					m[t][1]++;
					break;
				case "activity":
					tempmodule[t][2][m[t][2]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
					m[t][2]++;
					break;
				case "policy":
					tempmodule[t][3][m[t][3]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
					m[t][3]++;
					break;
				
				case "base":
					tempmodule[t][8][m[t][8]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
					m[t][8]++;
					break;
				case "atmosphere":
					tempmodule[t][9][m[t][9]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
					m[t][9]++;
					break;
				case "structure":
						tempmodule[t][10][m[t][10]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
						m[t][10]++;						
						break;
				}//E of switch	
			switch(event.getA09aspect()){
			case "marketing":
				tempmodule[t][4][m[t][4]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
				m[t][4]++;
				break;
			case "safety":
				tempmodule[t][5][m[t][5]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
				m[t][5]++;
				break;
			case "paradigm":
				tempmodule[t][6][m[t][6]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
				m[t][6]++;
				break;
			case "rural":
				tempmodule[t][7][m[t][7]]=event.getA04datumnamech()+"："+event.getA05datum()+event.getA06datumunit();
				m[t][7]++;
				break;
			}//E of switch
			}//E of for q
		}//E of for t
		for(int t=0;t<16;t++){
			for(int q=0;q<11;q++){
				module[t][q]=new String[m[t][q]];
				for(int r=0;r<m[t][q];r++){				
				module[t][q][r]=tempmodule[t][q][r];
				}
			}
			}
		return module;
	}
 
	@Override
	public int[][][] moduleweight(List<Ballbevents> allevents, int[][] eventweight,int[][] suffix) {
		int[][][] modulewei=new int[16][11][];
		int[] s=new int[16];
		int[][][] tempweight=new int[16][11][400];
		int[][] m=new int[16][11];		
		for(int t=0;t<16;t++){
			s[t]=suffix[t].length;
			for(int r=0;r<11;r++){
				m[t][r]=0;
			}
			for(int q=0;q<s[t];q++){
				Ballbevents event=allevents.get(suffix[t][q]);				
				if(!("0".equalsIgnoreCase(event.getA19special()))){
					tempweight[t][0][m[t][0]]=eventweight[suffix[t][q]][4];
					m[t][0]++;
				}
			switch(event.getA08dimension()){
				case "factor":
					tempweight[t][1][m[t][1]]=eventweight[suffix[t][q]][4];
					m[t][1]++;
					break;
				case "activity":
					tempweight[t][2][m[t][2]]=eventweight[suffix[t][q]][4];
					m[t][2]++;
					break;
				case "policy":
					tempweight[t][3][m[t][3]]=eventweight[suffix[t][q]][4];
					m[t][3]++;
					break;
				case "base":
					tempweight[t][8][m[t][8]]=eventweight[suffix[t][q]][4];
					m[t][8]++;
					break;
				case "atmosphere":
					tempweight[t][9][m[t][9]]=eventweight[suffix[t][q]][4];
					m[t][9]++;
					break;
				case "structure":
						tempweight[t][10][m[t][10]]=eventweight[suffix[t][q]][4];
						m[t][10]++;						
						break;
				}//E of switch
			switch(event.getA09aspect()){
			case "marketing":
				tempweight[t][4][m[t][4]]=eventweight[suffix[t][q]][4];
				m[t][4]++;
				break;
			case "safety":
				tempweight[t][5][m[t][5]]=eventweight[suffix[t][q]][4];
				m[t][5]++;
				break;
			case "paradigm":
				tempweight[t][6][m[t][6]]=eventweight[suffix[t][q]][4];
				m[t][6]++;
				break;
			case "rural":
				tempweight[t][7][m[t][7]]=eventweight[suffix[t][q]][4];
				m[t][7]++;
				break;
			}//E of switch	
			}//E of for q
		}//E of for t
		for(int t=0;t<16;t++){
			for(int q=0;q<11;q++){
				modulewei[t][q]=new int[m[t][q]];
				for(int r=0;r<m[t][q];r++){				
				modulewei[t][q][r]=tempweight[t][q][r];
				}
			}
			}
		return modulewei;
	}

	@Override
	public int[][][] sortweight(int[][][] moduleweight) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[][][] sortmodule(String[][][] module) {
		// TODO Auto-generated method stub
		return null;
	}

}
