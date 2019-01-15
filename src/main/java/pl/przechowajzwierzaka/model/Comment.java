package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

import static javax.persistence.CascadeType.MERGE;

@Entity
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 1, nullable = false)
    private String type;

    @ManyToOne(cascade = {MERGE})
    private Blog blog;

    @ManyToOne(cascade = {MERGE})
    private Offer offer;

    @ManyToOne(cascade = {MERGE})
    private Review review;

    @ManyToOne(cascade = {MERGE})
    @JoinColumn(name = "author_id")
    private User user;

    @Column(length = 20, updatable = false)
    private String created;

    @Size(max = 300)
    @NotBlank
    private String text;

    @Column(columnDefinition = "TINYINT")
    private int status;




}
