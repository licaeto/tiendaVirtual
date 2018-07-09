package org.spring.roo.tiendavirtual.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.spring.roo.tiendavirtual.domain.Cliente;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = ClienteRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Cliente.class, finders = { @RooFinder(value = "findByUsernameOrEmail", returnType = Cliente.class) })
public interface ClienteRepository extends DetachableJpaRepository<Cliente, Long>, ClienteRepositoryCustom {
}
