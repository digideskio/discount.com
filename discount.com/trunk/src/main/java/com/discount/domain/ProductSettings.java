package com.discount.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "settings", uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class ProductSettings implements Serializable {

	private static final long serialVersionUID = -6398312199674516179L;

	@Id
	@SequenceGenerator(name = "id_seq", sequenceName = "product_settings_id_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_seq")
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;

	@ManyToOne(cascade = { CascadeType.ALL })
	@JoinColumn(name = "product_id")
	private Product product;

	@Column(name = "property_name")
	@Size(min = 3, max = 30)
	@NotNull
	private String propertyName;

	@Column(name = "property_value")
	@Size(min = 3, max = 30)
	@NotNull
	private String propertyValue;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public String getPropertyValue() {
		return propertyValue;
	}

	public void setPropertyValue(String propertyValue) {
		this.propertyValue = propertyValue;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		ProductSettings productSettings;
		if (obj instanceof ProductSettings) {
			productSettings = (ProductSettings) obj;

			if (this.getPropertyName()
					.equals(productSettings.getPropertyName())
					&& this.getPropertyValue().equals(
							productSettings.getPropertyValue())) {
				result = true;
			}
		}
		return result;
	}
}
