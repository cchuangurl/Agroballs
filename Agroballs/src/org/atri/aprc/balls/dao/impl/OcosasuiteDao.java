package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IOcosasuiteDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ocosasuite;
import org.springframework.stereotype.Repository;
@Repository("ocosasuiteDao")
public class OcosasuiteDao  extends AbstractHibernateDao<Ocosasuite> implements IOcosasuiteDao {
	public OcosasuiteDao() {
        super();
        
        setClazz(Ocosasuite.class);
    }
}
