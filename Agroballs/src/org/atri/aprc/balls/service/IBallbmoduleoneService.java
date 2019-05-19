package org.atri.aprc.balls.service;

import java.util.List;

import org.atri.aprc.balls.model.Ballbevents;

//@Repository("ballbmoduleone")
public interface IBallbmoduleoneService{
	int[][] makesuffix(List<Ballbevents> allevents);
	String[][][] modulize(List<Ballbevents> allevents,int[][] suffix);
	int[][][] moduleweight(List<Ballbevents> allevents,int[][] eventweight,int[][] suffix);
	int[][][] sortweight(int[][][] moduleweight);
	String[][][] sortmodule(String[][][] module);
}
