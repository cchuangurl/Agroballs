package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IBallbuserDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ballbuser;
import org.springframework.stereotype.Repository;

@Repository("ballbuserDao")
public class BallbuserDao extends AbstractHibernateDao<Ballbuser> implements IBallbuserDao {
	public BallbuserDao() {
        super();
        
        setClazz(Ballbuser.class);
    }
}
