package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IBallbeventsDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ballbevents;
import org.springframework.stereotype.Repository;

@Repository("ballbeventsDao")
public class BallbeventsDao extends AbstractHibernateDao<Ballbevents> implements IBallbeventsDao {
	public BallbeventsDao() {
        super();
        
        setClazz(Ballbevents.class);
    }
}

