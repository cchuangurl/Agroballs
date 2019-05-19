package org.atri.aprc.balls.service.common;

import java.io.Serializable;
import java.util.List;

import org.atri.aprc.balls.dao.common.IOperations;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class AbstractService<T extends Serializable> implements IOperations<T> {
    
    protected abstract IOperations<T> getDao();

    @Override
    public T findOne(final Long id) {
        return getDao().findOne(id);
    }

    @Override
    public List<T> findAll() {
        return getDao().findAll();
    }
    
    @Override
    public List<T> findByCriteron(final String param1, final String param2) {
        return getDao().findByCriteron(param1,param2);
    }

    @Override
    public void create(final T entity) {
        getDao().create(entity);
    }

    @Override
    public T update(final T entity) {
        return getDao().update(entity);
    }

    @Override
    public void delete(final T entity) {
        getDao().delete(entity);
    }

    @Override
    public void deleteById(Long entityId) {
        getDao().deleteById(entityId);
    }

}
