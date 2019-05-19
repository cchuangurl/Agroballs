package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IOcosaplanDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ocosaplan;
import org.atri.aprc.balls.service.IOcosaplanService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ocosaplanService")
public class OcosaplanService extends AbstractService<Ocosaplan> implements IOcosaplanService {
    @Resource(name="ocosaplanDao")
    private IOcosaplanDao dao;
    
    public OcosaplanService() {
        super();
    }

    @Override
    protected IOperations<Ocosaplan> getDao() {
        return this.dao;
    }
}

