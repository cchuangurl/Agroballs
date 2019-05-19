package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IBallauserDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ballauser;
import org.atri.aprc.balls.service.IBallauserService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ballauserService")
public class BallauserService extends AbstractService<Ballauser> implements IBallauserService {
    @Resource(name="ballauserDao")
    private IBallauserDao dao;
    
    public BallauserService() {
        super();
    }

    @Override
    protected IOperations<Ballauser> getDao() {
        return this.dao;
    }
}
