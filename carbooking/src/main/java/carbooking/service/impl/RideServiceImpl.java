package carbooking.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import carbooking.dao.RideDao;
import carbooking.model.Car;
import carbooking.model.Route;
import carbooking.model.User;
import carbooking.service.RideService;

@Service
@Transactional

public class RideServiceImpl implements RideService{

	@Autowired
	RideDao rideDao;
	
	@Override
	public void saveUser(User user) {
		
		rideDao.saveUser(user);
	}

	@Override
	public List<Route> listRoutes() {
		
		return rideDao.listRoutes();
	}

	@Override
	public List<Car> listCars() {
		
		return rideDao.listCars();
	}

	@Override
	public Car carDetail(int carId) {

		return rideDao.carDetail(carId);
	}

	@Override
	public Route routeDetail(int routeId) {
		
		return rideDao.routeDetail(routeId);
	}

	@Override
	public boolean checkUser(User user) {
		
		return rideDao.checkUser(user);

		
	}
	
	

}
