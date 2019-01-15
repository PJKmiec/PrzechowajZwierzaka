package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

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
    private String title;

    @Size(max = 1000)
    @NotBlank
    private String content;

    @Column(columnDefinition = "TINYINT")
    private int status;
}
