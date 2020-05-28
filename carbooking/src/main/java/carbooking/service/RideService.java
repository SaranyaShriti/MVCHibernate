package carbooking.service;

import java.util.List;

import carbooking.model.Car;
import carbooking.model.Route;
import carbooking.model.User;

public interface RideService {

	public void saveUser(User user);

	public List<Route> listRoutes(int pageNumber);

	public List<Car> listCars();
	
	public Car carDetail(int carId);
	
	public Route routeDetail(int routeId);

	public boolean checkUser(User user);
}
