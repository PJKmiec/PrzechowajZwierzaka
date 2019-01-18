package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import pl.przechowajzwierzaka.filter.Nl2br;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "blog")
public class Blog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 20, updatable = false)
    private String created;

    @Column(length = 20)
    private String edited;

    @Size(max = 50)
    private String pic;

    @Size(max = 150)
    @NotBlank
    private String title;

    @Size(max = 1000)
    @NotBlank
    private String content;

    @Column(columnDefinition = "TINYINT")
    private int status;

//    constructors

    public Blog(){}

    public Blog(String created, String edited, String pic, String title, String content, int status) {
        this.created = created;
        this.edited = edited;
        this.pic = pic;
        this.title = title;
        this.content = content;
        this.status = status;
    }

//    getters & setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return Nl2br.br(content);
    }

    public void setContent(String content) {
        this.content = Nl2br.rm(content);
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
