package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IBallauserDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ballauser;
import org.springframework.stereotype.Repository;

@Repository("ballauserDao")
public class BallauserDao extends AbstractHibernateDao<Ballauser> implements IBallauserDao {
	public BallauserDao() {
        super();
        
        setClazz(Ballauser.class);
    }
}
