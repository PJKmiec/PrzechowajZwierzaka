package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

import static javax.persistence.CascadeType.MERGE;

@Entity
@Table(name = "reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 1, nullable = false)
    @NotEmpty
    private String type;

    @ManyToOne(cascade = {MERGE})
    private User user;

    @ManyToOne(cascade = {MERGE})
    @JoinColumn(name = "author_id")
    private User author;

    @Column(precision = 4, scale = 2, nullable = false)
    @Min(1)
    @Max(10)
    private double rating;

    @Size(max = 1000)
    @NotBlank
    private String description;

    @Column(length = 20, updatable = false)
    private String created;

    @Column(length = 20)
    private String edited;

    @Size(max = 20)
    @NotBlank
    private String animal_type;

    @Size(max = 20)
    @NotBlank
    private String requirements;

    @Column(columnDefinition = "TINYINT")
    private int status;


}
