package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IBallbeventsDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ballbevents;
import org.atri.aprc.balls.service.IBallbeventsService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ballbeventsService")
public class BallbeventsService extends AbstractService<Ballbevents> implements IBallbeventsService {
    @Resource(name="ballbeventsDao")
    private IBallbeventsDao dao;
    
    public BallbeventsService() {
        super();
    }

    @Override
    protected IOperations<Ballbevents> getDao() {
        return this.dao;
    }
}

