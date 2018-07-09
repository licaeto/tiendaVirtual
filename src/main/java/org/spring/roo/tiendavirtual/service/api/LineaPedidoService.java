package org.spring.roo.tiendavirtual.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = LineaPedidoService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = LineaPedido.class)
public interface LineaPedidoService extends EntityResolver<LineaPedido, Long>, ValidatorService<LineaPedido> {
}
