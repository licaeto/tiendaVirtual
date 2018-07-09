package org.spring.roo.tiendavirtual.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import org.spring.roo.tiendavirtual.domain.Cliente;

/**
 * = ClienteRepositoryImpl
 *
 * Implementation of ClienteRepositoryCustom
 *
 */
@RooJpaRepositoryCustomImpl(repository = ClienteRepositoryCustom.class)
public class ClienteRepositoryImpl extends QueryDslRepositorySupportExt<Cliente> implements ClienteRepositoryCustom{

    /**
     * Default constructor
     */
    ClienteRepositoryImpl() {
        super(Cliente.class);
    }
}