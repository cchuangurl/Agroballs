package org.atri.aprc.balls.dao.impl;
import org.atri.aprc.balls.dao.IDbdic1Dao;
import org.atri.aprc.balls.dao.common.AbstractHibernateDao;
import org.atri.aprc.balls.model.Dbdic1;
import org.springframework.stereotype.Repository;

@Repository("dbdic1Dao")
public class Dbdic1Dao extends AbstractHibernateDao<Dbdic1> implements IDbdic1Dao {
	public Dbdic1Dao() {
        super();
        
        setClazz(Dbdic1.class);
    }
}
