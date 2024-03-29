package com.algaworks.algafood.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity(name = "tbl_restaurant")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Restaurant {

    @Id
    @EqualsAndHashCode.Include
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(name = "shipping_fee", nullable = false)
    private BigDecimal shippingFee;

//    @JsonIgnore
//    @JsonIgnoreProperties({"hibernateLazyInitializer"})
    @ManyToOne // (fetch = FetchType.LAZY)
    @JoinColumn(name = "kitchen_id", nullable = false)
    private Kitchen kitchen;

    @JsonIgnore
    @Embedded
    private Address address;

//    @JsonIgnore
    @ManyToMany //(fetch = FetchType.EAGER)
    @JoinTable(name = "tbl_restaurant_payment_method",
        joinColumns = @JoinColumn(name = "restaurant_id"),
        inverseJoinColumns = @JoinColumn(name = "payment_method_id"))
    private List<PaymentMethod> paymentMethods = new ArrayList<>();

    @JsonIgnore
    @OneToMany
    private List<Product> products;

    @JsonIgnore
    @CreationTimestamp
    @Column(nullable = false, columnDefinition = "dateTime")
    private LocalDateTime creationDateTime;

    @JsonIgnore
    @UpdateTimestamp
    @Column(nullable = false, columnDefinition = "dateTime")
    private LocalDateTime updatedDateTime;
}
