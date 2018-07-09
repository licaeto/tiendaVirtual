package org.spring.roo.tiendavirtual.domain;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import org.springframework.roo.addon.jpa.annotations.entity.JpaRelationType;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaRelation;

/**
 * = Cliente
 TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Cliente {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String username;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String password;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String nombreCompleto;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String direccionPostal;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String email;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private Boolean activo;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @OneToMany(cascade = { javax.persistence.CascadeType.MERGE, javax.persistence.CascadeType.PERSIST }, fetch = FetchType.LAZY, mappedBy = "cliente")
    @RooJpaRelation(type = JpaRelationType.AGGREGATION)
    private Set<Pedido> pedidos = new HashSet<Pedido>();
}
