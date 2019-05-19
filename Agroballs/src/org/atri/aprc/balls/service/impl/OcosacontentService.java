package org.atri.aprc.balls.service.impl;
import javax.annotation.Resource;

import org.atri.aprc.balls.dao.IOcosacontentDao;
import org.atri.aprc.balls.dao.common.IOperations;
import org.atri.aprc.balls.model.Ocosacontent;
import org.atri.aprc.balls.service.IOcosacontentService;
import org.atri.aprc.balls.service.common.AbstractService;
import org.springframework.stereotype.Service;
@Service("ocosacontentService")
public class OcosacontentService extends AbstractService<Ocosacontent> implements IOcosacontentService {
    @Resource(name="ocosacontentDao")
    private IOcosacontentDao dao;
    
    public OcosacontentService() {
        super();
    }

    @Override
    protected IOperations<Ocosacontent> getDao() {
        return this.dao;
    }

}
