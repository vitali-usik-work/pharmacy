package pharmacy.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pharmacy.entity.Drug;

@Repository
public class DrugDAO {
  
  @Autowired
  private SessionFactory sessionFactory;

  @SuppressWarnings("unchecked")
  public List<Drug> listDrugs() {
    return sessionFactory.getCurrentSession().createQuery("FROM Drug ORDER BY id DESC").list();
  }
  
  public Drug retrieveArticle(String id) {
    Drug drug = null;
    Query q = sessionFactory.getCurrentSession().createQuery("FROM Drug WHERE (id = :id)");
    q.setString("id", id);
    drug = (Drug) q.uniqueResult();

    return drug;
}

}
