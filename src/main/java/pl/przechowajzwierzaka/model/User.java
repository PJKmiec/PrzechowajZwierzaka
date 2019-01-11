package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.Email;
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

    @Column(length = 20, nullable = false)
    @Size(min = 5, max = 20)
    @NotEmpty
    private String login;

    @Column(length = 20, nullable = false)
    @Size(min = 5, max = 20)
    @NotEmpty
    private String password;

    @Column(length = 50, nullable = false)
    @Size(min = 5, max = 50)
    @NotEmpty
    private String email;

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date last_login;

    @Column(length = 50)
    @Size(max = 50)
    private String pic;

    @Column(length = 300)
    @Size(max = 300)
    private String bio;

    @Column(precision = 4, scale = 2)
    @Min(1)
    @Max(10)
    private double rating;

    @Column(length = 50)
    @Size(max = 50)
    private String city;

    @Column(length = 200)
    @Size(max = 200)
    private String address;

    @Column(length = 30)
    @Size(max = 30)
    private String phone;

    @Column(columnDefinition = "TINYINT")
    private int type;


}
