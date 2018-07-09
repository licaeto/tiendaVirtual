package org.spring.roo.tiendavirtual.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = PedidoService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Pedido.class)
public interface PedidoService extends EntityResolver<Pedido, Long>, ValidatorService<Pedido> {
}
