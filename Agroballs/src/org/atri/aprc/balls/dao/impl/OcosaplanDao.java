package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IOcosaplanDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ocosaplan;
import org.springframework.stereotype.Repository;

@Repository("ocosaplanDao")
public class OcosaplanDao extends AbstractHibernateDao<Ocosaplan> implements IOcosaplanDao {
	public OcosaplanDao() {
        super();
        
        setClazz(Ocosaplan.class);
    }
}

