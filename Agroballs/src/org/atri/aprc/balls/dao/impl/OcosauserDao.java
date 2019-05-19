package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IOcosauserDao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Ocosauser;
import org.springframework.stereotype.Repository;

@Repository("ocosauserDao")
public class OcosauserDao extends AbstractHibernateDao<Ocosauser> implements IOcosauserDao {
	public OcosauserDao() {
        super();
        
        setClazz(Ocosauser.class);
    }
}
