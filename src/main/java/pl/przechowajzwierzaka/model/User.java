package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.mindrot.jbcrypt.BCrypt;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 5, max = 20)
    @NotBlank
    private String login;

    @Column(length = 250)
    @Size(min = 5)
    @NotBlank
    private String password;

    @Size(min = 5, max = 50)
    @NotBlank
    @Email
    private String email;

    @Column(columnDefinition="DATETIME", updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date last_login;

    @Size(max = 50)
    private String pic;

    @Size(max = 300)
    private String bio;

    @Column(precision = 4, scale = 2)
    @Min(1)
    @Max(10)
    private double rating;

    @Size(max = 50)
    private String city;

    @Size(max = 200)
    private String address;

    @Size(max = 30)
    private String phone;

    @Column(columnDefinition = "TINYINT")
    private int type;

//    getters & setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public void setPassword(String password) { this.password = BCrypt.hashpw(password, BCrypt.gensalt()); }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getLast_login() {
        return last_login;
    }

    public void setLast_login(Date last_login) {
        this.last_login = last_login;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

//    overrides

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", created=" + created +
                ", last_login=" + last_login +
                ", pic='" + pic + '\'' +
                ", bio='" + bio + '\'' +
                ", rating=" + rating +
                ", city='" + city + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", type=" + type +
                '}';
    }
}
