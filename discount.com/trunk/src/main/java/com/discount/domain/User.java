package com.discount.domain;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "users", uniqueConstraints = {
		@UniqueConstraint(columnNames = "id"),
		@UniqueConstraint(columnNames = "login") })
public class User implements Serializable {

	private static final long serialVersionUID = -4565056150507730822L;

	@Id
	@SequenceGenerator(name = "id_seq", sequenceName = "user_id_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_seq")
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;

	@Column(name = "login", unique = true)
	@Size(min = 3, max = 30)
	@NotNull
	private String login;

	@Column(name = "password")
	@Size(min = 6, max = 30)
	@NotNull
	private String password;

	@Column(name = "first_name")
	@NotNull
	private String firstName;

	@Column(name = "last_name")
	@NotNull
	private String lastName;

	@Transient
	private String fullName;

	@Column(name = "email")
	@Email
	@NotEmpty
	private String email;

	@Column(name = "phone_number")
	@Size(min = 10, max = 13)
	private String phoneNumber;

	@Column(name = "city")
	private String city;

	@Column(name = "address")
	private String address;

	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany(cascade = CascadeType.MERGE)
	@JoinTable(name = "user_role", joinColumns = { @JoinColumn(name = "user_id", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "role_id", nullable = false, updatable = false) })
	private List<UserRole> roles;

	@Column
	private String image = "images/default.jpg";

	@LazyCollection(LazyCollectionOption.FALSE)
	@ManyToMany(mappedBy = "users", cascade = { CascadeType.MERGE,
			CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.REMOVE })
	private Set<Notification> notifications;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getName() {
		return getFirstName() + " " + getLastName();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<UserRole> getRoles() {
		return roles;
	}

	public void setRoles(List<UserRole> roles) {
		this.roles = roles;
	}

	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		User user;
		if (obj instanceof User) {
			user = (User) obj;

			if (this.getLogin().equals(user.getLogin())
					&& this.getEmail().equals(user.getEmail())
					// && this.getPassword().equals(user.getPassword())
					&& this.getFirstName().equals(user.getFirstName())
					&& this.getLastName().equals(user.getLastName())
			/* && this.getRoles().equals(user.getRoles()) */) {
				result = true;
			}
		}
		return result;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return getLogin();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getFullName() {
		return fullName != null ? fullName : (firstName + " " + lastName);
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Set<Notification> getNotifications() {
		return notifications;
	}

	public void setNotifications(Set<Notification> notifications) {
		this.notifications = notifications;
	}

}
