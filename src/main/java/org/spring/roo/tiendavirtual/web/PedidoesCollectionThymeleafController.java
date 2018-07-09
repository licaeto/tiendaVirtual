package org.spring.roo.tiendavirtual.web;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PedidoesCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Pedido.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class PedidoesCollectionThymeleafController {
}
