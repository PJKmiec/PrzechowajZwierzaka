package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.awt.print.Book;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import static javax.persistence.CascadeType.MERGE;

@Entity
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 1)
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

    @OneToMany(mappedBy = "comment", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Reply> replies = new ArrayList<>();

    @Column(length = 20, updatable = false)
    private String created;

    @Size(max = 300)
    @NotBlank
    private String text;

    @Column(columnDefinition = "TINYINT")
    private int status;

//    constructor

    public Comment(){}

    public Comment(String type, Blog blog, Offer offer, Review review, User user, List<Reply> replies, String created, String text, int status) {
        this.type = type;
        this.blog = blog;
        this.offer = offer;
        this.review = review;
        this.user = user;
        this.replies = replies;
        this.created = created;
        this.text = text;
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

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    public Review getReview() {
        return review;
    }

    public void setReview(Review review) {
        this.review = review;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Reply> getReplies() {
        return replies;
    }

    public void setReplies(List<Reply> replies) {
        this.replies = replies;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
