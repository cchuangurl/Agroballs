package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IBallbuserDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ballbuser;
import org.atri.aprc.balls.service.IBallbuserService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ballbuserService")
public class BallbuserService extends AbstractService<Ballbuser> implements IBallbuserService {
    @Resource(name="ballbuserDao")
    private IBallbuserDao dao;
    
    public BallbuserService() {
        super();
    }

    @Override
    protected IOperations<Ballbuser> getDao() {
        return this.dao;
    }
}
