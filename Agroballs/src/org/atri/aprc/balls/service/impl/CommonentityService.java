package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.ICommonentityDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Commonentity;
import org.atri.aprc.balls.service.ICommonentityService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("commonentityService")
public class CommonentityService extends AbstractService<Commonentity> implements ICommonentityService {
    @Resource(name="commonentityDao")
    private ICommonentityDao dao;
    
    public CommonentityService() {
        super();
    }

    @Override
    protected IOperations<Commonentity> getDao() {
        return this.dao;
    }
}
