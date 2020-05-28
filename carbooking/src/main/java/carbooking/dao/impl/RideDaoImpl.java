package carbooking.dao.impl;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import carbooking.dao.RideDao;
import carbooking.model.Car;
import carbooking.model.Route;
import carbooking.model.User;

@Repository
public class RideDaoImpl implements RideDao {

	int pageSize = 3;

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public void saveUser(User user) {
		
		Session session = sessionFactory.getCurrentSession();
		session.persist(user);
	
	}
	
	public List<Route> listRoutes(int pageNumber){
		List<Route> listOfRoutes=new ArrayList<Route>();
		Session session = sessionFactory.getCurrentSession();
		
		Query<Route> query = session.createQuery("from Route");
		query = query.setFirstResult(pageSize * (pageNumber - 1));
	    query.setMaxResults(pageSize);
		listOfRoutes=query.list();
		return listOfRoutes;
	}
	
	
	public List<Car> listCars(){
		List<Car> listOfCars=new ArrayList<Car>();
		Session session = sessionFactory.getCurrentSession();
		
		Query<Car> query = session.createQuery("from Car where isFree=1");	
		listOfCars=query.list();
		return listOfCars;
	}
	
	public Car carDetail(int carId){
		Session session = sessionFactory.getCurrentSession();
		
		Car carDetails = (Car) session.get(Car.class,carId);	
		return carDetails;
	}

	public Route routeDetail(int routeId){
		Session session = sessionFactory.getCurrentSession();
		
		Route routeDetails = (Route) session.get(Route.class,routeId);	
		return routeDetails;
	}

	@Override
	public boolean checkUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("dao");
		
		String stmt = "from User where name='"+user.getName()+"' AND password='"+user.getPassword()+"'";
		Query<?> q=session.createQuery(stmt);
		User u=(User) q.uniqueResult();
		if(u.getId()>0)
			return true;
		else
			return false;
	}


}
