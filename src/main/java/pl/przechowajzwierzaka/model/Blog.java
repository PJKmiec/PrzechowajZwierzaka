package pl.przechowajzwierzaka.model;

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

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date edited;

    @Column(length = 50)
    @Size(max = 50)
    private String pic;

    @Column(length = 1000, nullable = false)
    @Size(max = 1000)
    @NotEmpty
    private String content;

    @Column(columnDefinition = "TINYINT")
    private int status;
}
