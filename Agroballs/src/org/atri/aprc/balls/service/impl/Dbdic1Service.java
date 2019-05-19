package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IDbdic1Dao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Dbdic1;
import org.atri.aprc.balls.service.IDbdic1Service;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("dbdic1Service")
public class Dbdic1Service extends AbstractService<Dbdic1> implements IDbdic1Service {
    @Resource(name="dbdic1Dao")
    private IDbdic1Dao dao;
    
    public Dbdic1Service() {
        super();
    }

    @Override
    protected IOperations<Dbdic1> getDao() {
        return this.dao;
    }
}
