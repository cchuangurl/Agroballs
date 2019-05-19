package org.atri.aprc.balls.dao.common;

import java.io.Serializable;
import java.util.List;

/*
 * 通用的操作接口
 */
public interface IOperations<T extends Serializable> {
     
        T findOne(final Long id);

        List<T> findAll();
        
        List<T> findByCriteron(final String param1, final String param2);

        void create(final T entity);

        T update(final T entity);

        void delete(final T entity);

        void deleteById(final Long entityId);

}
