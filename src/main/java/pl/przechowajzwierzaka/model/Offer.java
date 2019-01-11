package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "offers")
public class Offer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private Long user_id;

    @Column(columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Column(columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date edited;

    @Column(precision = 10, scale = 2, nullable = false)
    @NotNull
    private double price;

    @Column(columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date starts;

    @Column(columnDefinition = "DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ends;

    @Column(length = 50)
    @Size(max = 50)
    private String city;

    @Column(length = 200)
    @Size(max = 200)
    private String address;

    @Column(length = 30)
    @Size(max = 30)
    private String phone;

    @Column(length = 50, nullable = false)
    @Size(min = 5, max = 50)
    @NotEmpty
    private String email;

    @Column(length = 50)
    @Size(max = 50)
    private String pic;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int cats;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int dogs;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int fish;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int birds;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int reptiles;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int small_rodents;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int big_rodents;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int bugs;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int horses;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int misc;

    @Column(length = 20, nullable = false)
    @NotEmpty
    private String requirements;

    private Long claimed_by;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int status;
}
