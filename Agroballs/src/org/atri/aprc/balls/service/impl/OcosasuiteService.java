package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IOcosasuiteDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ocosasuite;
import org.atri.aprc.balls.service.IOcosasuiteService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;
@Service("ocosasuiteService")
public class OcosasuiteService extends AbstractService<Ocosasuite> implements IOcosasuiteService {
    @Resource(name="ocosasuiteDao")
    private IOcosasuiteDao dao;
    
    public OcosasuiteService() {
        super();
    }

    @Override
    protected IOperations<Ocosasuite> getDao() {
        return this.dao;
    }

}
