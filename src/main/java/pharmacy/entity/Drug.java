package pharmacy.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DRUG")
public class Drug {

  public Drug(){;
  }
  
  @Id
  @Column(name = "ID")
  @GeneratedValue
  private Integer id;

  @Column(name = "NAME")
  private String name;

  @Column(name = "drugImg")
  private String drugImg;

  @Column(name = "DESC")
  private String desc;
  
  @Column(name = "isPrescription")
  private String isPrescription;

  @Column(name = "PRODUCER")
  private String producer;

  @Column(name = "COUNTRY")
  private String country;

  @Column(name = "DOSAGE")
  private String dosage;
  
  @Column(name = "TYPE")
  private String type;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDrugImg() {
    return drugImg;
  }

  public void setDrugImg(String drugImg) {
    this.drugImg = drugImg;
  }

  public String getDesc() {
    return desc;
  }

  public void setDesc(String desc) {
    this.desc = desc;
  }

  public String getIsPrescription() {
    return isPrescription;
  }

  public void setIsPrescription(String isPrescription) {
    this.isPrescription = isPrescription;
  }

  public String getProducer() {
    return producer;
  }

  public void setProducer(String producer) {
    this.producer = producer;
  }

  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public String getDosage() {
    return dosage;
  }

  public void setDosage(String dosage) {
    this.dosage = dosage;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }
}