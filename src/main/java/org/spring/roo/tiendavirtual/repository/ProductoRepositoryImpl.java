package org.spring.roo.tiendavirtual.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.spring.roo.tiendavirtual.domain.Producto;

/**
 * = ProductoRepositoryImpl
 *
 * Implementation of ProductoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ProductoRepositoryCustom.class)
public class ProductoRepositoryImpl extends QueryDslRepositorySupportExt<Producto> implements ProductoRepositoryCustom{

    /**
     * Default constructor
     */
    ProductoRepositoryImpl() {
        super(Producto.class);
    }
}