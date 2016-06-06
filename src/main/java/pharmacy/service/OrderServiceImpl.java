package pharmacy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pharmacy.dao.OrderDAO;
import pharmacy.entity.Order;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDAO orderDAO;

    @Transactional
    public void saveOrder(int userId, String drugId) {
        Order order = new Order(Integer.parseInt(drugId), userId);
        //order.setId(1);
        System.out.println("UserId=" + userId + " DrugId=" + drugId);
        orderDAO.makeOrder(order);
    }
}
