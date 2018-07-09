package org.spring.roo.tiendavirtual.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.spring.roo.tiendavirtual.domain.Pedido;

/**
 * = PedidoRepositoryImpl
 *
 * Implementation of PedidoRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = PedidoRepositoryCustom.class)
public class PedidoRepositoryImpl extends QueryDslRepositorySupportExt<Pedido> implements PedidoRepositoryCustom{

    /**
     * Default constructor
     */
    PedidoRepositoryImpl() {
        super(Pedido.class);
    }
}