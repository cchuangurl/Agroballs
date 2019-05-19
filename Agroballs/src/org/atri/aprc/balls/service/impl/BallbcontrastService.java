package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IBallbcontrastDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ballbcontrast;
import org.atri.aprc.balls.service.IBallbcontrastService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ballbcontrastService")
public class BallbcontrastService extends AbstractService<Ballbcontrast> implements IBallbcontrastService {
    @Resource(name="ballbcontrastDao")
    private IBallbcontrastDao dao;
    
    public BallbcontrastService() {
        super();
    }

    @Override
    protected IOperations<Ballbcontrast> getDao() {
        return this.dao;
    }
}

