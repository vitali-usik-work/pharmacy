package pharmacy.entity;


import javax.persistence.*;

@Entity
@Table(name = "ORDER")
public class Order {

    public Order(){}

    public Order(Integer drugId, Integer userId) {
        this.drugId = drugId;
        this.userId = userId;
    }

    @Id
    @Column(name = "ID")
    @GeneratedValue
    private Integer id;

    @Column(name = "drugid")
    private Integer drugId;

    @Column(name = "userid")
    private Integer userId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDrugId() {
        return drugId;
    }

    public void setDrugId(Integer drugId) {
        this.drugId = drugId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
