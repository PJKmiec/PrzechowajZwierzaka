package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "replies")
public class Reply {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long comment_id;

    private Long author_id;

    @Column(columnDefinition="DATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;

    @Column(length = 300, nullable = false)
    @Size(max = 300)
    @NotEmpty
    private String text;

    @Column(columnDefinition = "TINYINT")
    private int status;


}