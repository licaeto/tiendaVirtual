package org.spring.roo.tiendavirtual.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.spring.roo.tiendavirtual.domain.LineaPedido;

/**
 * = LineaPedidoRepositoryImpl
 *
 * Implementation of LineaPedidoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = LineaPedidoRepositoryCustom.class)
public class LineaPedidoRepositoryImpl extends QueryDslRepositorySupportExt<LineaPedido> implements LineaPedidoRepositoryCustom{

    /**
     * Default constructor
     */
    LineaPedidoRepositoryImpl() {
        super(LineaPedido.class);
    }
}