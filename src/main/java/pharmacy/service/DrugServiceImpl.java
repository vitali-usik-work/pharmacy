package pharmacy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pharmacy.dao.DrugDAO;
import pharmacy.entity.Drug;

@Service
public class DrugServiceImpl implements DrugService {

  @Autowired
  private DrugDAO drugDAO;

  @Transactional
  public List<Drug> listDrugs() {
    return drugDAO.listDrugs();
  }

  @Transactional
  public Drug retrieveArticle(String id) {
    return drugDAO.retrieveArticle(id);
  }

}
