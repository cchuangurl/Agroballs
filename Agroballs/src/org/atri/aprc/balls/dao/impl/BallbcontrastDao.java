package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IBallbcontrastDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ballbcontrast;
import org.springframework.stereotype.Repository;

@Repository("ballbcontrastDao")
public class BallbcontrastDao extends AbstractHibernateDao<Ballbcontrast> implements IBallbcontrastDao {
	public BallbcontrastDao() {
        super();
        
        setClazz(Ballbcontrast.class);
    }
}
