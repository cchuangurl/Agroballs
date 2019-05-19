package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IOcosauserDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ocosauser;
import org.atri.aprc.balls.service.IOcosauserService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;

@Service("ocosauserService")
public class OcosauserService extends AbstractService<Ocosauser> implements IOcosauserService {
    @Resource(name="ocosauserDao")
    private IOcosauserDao dao;
    
    public OcosauserService() {
        super();
    }

    @Override
    protected IOperations<Ocosauser> getDao() {
        return this.dao;
    }
}
