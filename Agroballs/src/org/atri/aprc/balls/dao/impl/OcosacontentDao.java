package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IOcosacontentDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ocosacontent;
import org.springframework.stereotype.Repository;
@Repository("ocosacontentDao")
public class OcosacontentDao  extends AbstractHibernateDao<Ocosacontent> implements IOcosacontentDao {
	public OcosacontentDao() {
        super();
        
        setClazz(Ocosacontent.class);
    }
}
