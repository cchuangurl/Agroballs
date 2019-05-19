package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IBallcuserDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ballcuser;
import org.atri.aprc.balls.service.IBallcuserService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ballcuserService")
public class BallcuserService extends AbstractService<Ballcuser> implements IBallcuserService {
    @Resource(name="ballcuserDao")
    private IBallcuserDao dao;
    
    public BallcuserService() {
        super();
    }

    @Override
    protected IOperations<Ballcuser> getDao() {
        return this.dao;
    }
}
