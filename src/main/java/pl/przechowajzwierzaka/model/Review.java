package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import pl.przechowajzwierzaka.filter.Nl2br;

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

    @ManyToOne
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
    private String requirements;

    @Column(columnDefinition = "TINYINT")
    private int status;

//    constructors

    public Review() {}

    public Review(String type, User user, User author, double rating, String description, String created, String edited, String animal_type, String requirements, int status) {
        this.type = type;
        this.user = user;
        this.author = author;
        this.rating = rating;
        this.description = description;
        this.created = created;
        this.edited = edited;
        this.animal_type = animal_type;
        this.requirements = requirements;
        this.status = status;
    }

//    getters & setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getDescription() {
        return Nl2br.br(description);
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getEdited() {
        return edited;
    }

    public void setEdited(String edited) {
        this.edited = edited;
    }

    public String getAnimal_type() {
        return animal_type;
    }

    public void setAnimal_type(String animal_type) {
        this.animal_type = animal_type;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
