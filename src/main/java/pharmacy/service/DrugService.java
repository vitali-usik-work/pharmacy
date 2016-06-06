package pharmacy.service;

import java.util.List;

import pharmacy.entity.Drug;

public interface DrugService {
  public List<Drug> listDrugs();

  public Drug retrieveArticle(String id);
}
