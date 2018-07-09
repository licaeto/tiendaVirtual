package org.spring.roo.tiendavirtual.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = PedidoRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Pedido.class)
public interface PedidoRepository extends DetachableJpaRepository<Pedido, Long>, PedidoRepositoryCustom {
}
