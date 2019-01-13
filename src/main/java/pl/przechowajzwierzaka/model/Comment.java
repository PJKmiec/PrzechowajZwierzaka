package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 1, nullable = false)
    private String type;

    @ManyToOne
    private Blog blog;

    @ManyToOne
    private Offer offer;

    @ManyToOne
    private Review review;

    @ManyToOne
    @JoinColumn(name = "author_id")
    private User user;

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Size(max = 300)
    @NotBlank
    private String text;

    @Column(columnDefinition = "TINYINT")
    private int status;




}
