package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.mindrot.jbcrypt.BCrypt;
import pl.przechowajzwierzaka.filter.Nl2br;

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

    @Column(unique = true)
    @Size(min = 5, max = 20)
    @NotBlank
    private String login;

    @Column(length = 250)
    @Size(min = 5)
    @NotBlank
    private String password;

    @Column(unique = true)
    @Size(min = 5, max = 50)
    @NotBlank
    @Email
    private String email;

    @Column(length=20, updatable = false)
    private String created;

    @Column(length=20)
    private String last_login;

    @Size(max = 50)
    private String pic;

    @Size(max = 300)
    private String bio;

    @Column(precision = 4, scale = 2)
    @Min(0)
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

//    constructors

    public User() {
    }

    public User(String login, String password, String email, String created, String last_login, String pic, String bio, double rating, String city, String address, String phone, int type) {
        this.login = login;
        this.password = password;
        this.email = email;
        this.created = created;
        this.last_login = last_login;
        this.pic = pic;
        this.bio = bio;
        this.rating = rating;
        this.city = city;
        this.address = address;
        this.phone = phone;
        this.type = type;
    }

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

    public void setPassword(String password) {
        this.password = BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getLast_login() {
        return last_login;
    }

    public void setLast_login(String last_login) {
        this.last_login = last_login;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getBio() {
        return Nl2br.br(bio);
    }

    public void setBio(String bio) {
        this.bio = Nl2br.rm(bio);
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
                ", created='" + created + '\'' +
                ", last_login='" + last_login + '\'' +
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
