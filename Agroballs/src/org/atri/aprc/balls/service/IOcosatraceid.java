package org.atri.aprc.balls.service;

import javax.annotation.Resource;

import org.atri.aprc.balls.model.Ocosaplan;

public interface IOcosatraceid {
	Long getUserfromPlan(Long planid);
	Long getPlanfromContent(Long contentid);
	Long getContentfromSuite(Long suiteid);
}
