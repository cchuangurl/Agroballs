package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IBallcuserDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ballcuser;
import org.springframework.stereotype.Repository;

@Repository("ballcuserDao")
public class BallcuserDao extends AbstractHibernateDao<Ballcuser> implements IBallcuserDao {
	public BallcuserDao() {
        super();
        
        setClazz(Ballcuser.class);
    }
}
