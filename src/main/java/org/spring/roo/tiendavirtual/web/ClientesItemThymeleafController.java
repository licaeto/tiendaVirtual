package org.spring.roo.tiendavirtual.web;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.spring.roo.tiendavirtual.domain.Cliente;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ClientesItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cliente.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ClientesItemThymeleafController implements ConcurrencyManager<Cliente> {
}
