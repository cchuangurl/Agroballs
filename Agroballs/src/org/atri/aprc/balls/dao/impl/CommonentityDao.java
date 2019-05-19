package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.ICommonentityDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Commonentity;
import org.springframework.stereotype.Repository;

@Repository("commonentityDao")
public class CommonentityDao extends AbstractHibernateDao<Commonentity> implements ICommonentityDao {
	public CommonentityDao() {
        super();
        
        setClazz(Commonentity.class);
    }
}
