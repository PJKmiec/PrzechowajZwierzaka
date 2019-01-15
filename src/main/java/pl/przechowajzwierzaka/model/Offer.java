package pl.przechowajzwierzaka.model;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

import static javax.persistence.CascadeType.*;

@Entity
@Table(name = "offers")
public class Offer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(cascade = {MERGE})
    private User user;

    @Column(length = 20, updatable = false)
    private String created;

    @Column(length = 20)
    private String edited;

    @Column(precision = 10, scale = 2, nullable = false)
    @NotNull
    private double price;

    @Column(length = 20)
    private String starts;

    @Column(length = 20)
    private String ends;

    @Size(max = 50)
    private String city;

    @Size(max = 200)
    private String address;

    @Size(max = 30)
    private String phone;

    @Size(min = 5, max = 50)
    @NotEmpty
    private String email;

    @Size(max = 50)
    private String pic;

    @Size(max = 50)
    private String pet_name;

    @Size(max = 1000)
    private String description;

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
    @NotBlank
    private String requirements;

    @ManyToOne(cascade = {MERGE})
    @JoinColumn(name = "claimed_by")
    private User claimant;

    @Column(columnDefinition = "TINYINT UNSIGNED")
    private int status;

//    constructors

    public Offer() {}

    public Offer(User user, String created, String edited, double price, String starts, String ends, String city, String address, String phone, String email, String pic, String pet_name, String description, int cats, int dogs, int fish, int birds, int reptiles, int small_rodents, int big_rodents, int bugs, int horses, int misc, String requirements, User claimant, int status) {
        this.user = user;
        this.created = created;
        this.edited = edited;
        this.price = price;
        this.starts = starts;
        this.ends = ends;
        this.city = city;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.pic = pic;
        this.pet_name = pet_name;
        this.description = description;
        this.cats = cats;
        this.dogs = dogs;
        this.fish = fish;
        this.birds = birds;
        this.reptiles = reptiles;
        this.small_rodents = small_rodents;
        this.big_rodents = big_rodents;
        this.bugs = bugs;
        this.horses = horses;
        this.misc = misc;
        this.requirements = requirements;
        this.claimant = claimant;
        this.status = status;
    }

//    getters & setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStarts() {
        return starts;
    }

    public void setStarts(String starts) {
        this.starts = starts;
    }

    public String getEnds() {
        return ends;
    }

    public void setEnds(String ends) {
        this.ends = ends;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getPet_name() {
        return pet_name;
    }

    public void setPet_name(String pet_name) {
        this.pet_name = pet_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCats() {
        return cats;
    }

    public void setCats(int cats) {
        this.cats = cats;
    }

    public int getDogs() {
        return dogs;
    }

    public void setDogs(int dogs) {
        this.dogs = dogs;
    }

    public int getFish() {
        return fish;
    }

    public void setFish(int fish) {
        this.fish = fish;
    }

    public int getBirds() {
        return birds;
    }

    public void setBirds(int birds) {
        this.birds = birds;
    }

    public int getReptiles() {
        return reptiles;
    }

    public void setReptiles(int reptiles) {
        this.reptiles = reptiles;
    }

    public int getSmall_rodents() {
        return small_rodents;
    }

    public void setSmall_rodents(int small_rodents) {
        this.small_rodents = small_rodents;
    }

    public int getBig_rodents() {
        return big_rodents;
    }

    public void setBig_rodents(int big_rodents) {
        this.big_rodents = big_rodents;
    }

    public int getBugs() {
        return bugs;
    }

    public void setBugs(int bugs) {
        this.bugs = bugs;
    }

    public int getHorses() {
        return horses;
    }

    public void setHorses(int horses) {
        this.horses = horses;
    }

    public int getMisc() {
        return misc;
    }

    public void setMisc(int misc) {
        this.misc = misc;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public User getClaimant() {
        return claimant;
    }

    public void setClaimant(User claimant) {
        this.claimant = claimant;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
