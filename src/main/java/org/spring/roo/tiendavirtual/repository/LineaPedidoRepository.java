package org.spring.roo.tiendavirtual.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = LineaPedidoRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = LineaPedido.class)
public interface LineaPedidoRepository extends DetachableJpaRepository<LineaPedido, Long>, LineaPedidoRepositoryCustom {
}
