package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

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

    @Size(min = 5, max = 20)
    @NotBlank
    private String password;

    @Size(min = 5, max = 50)
    @NotBlank
    private String email;

    @Column(columnDefinition="DATETIME")
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


}
