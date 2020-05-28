package carbooking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import carbooking.model.Car;
import carbooking.model.Login;
import carbooking.model.Route;
import carbooking.model.User;
import carbooking.service.RideService;

@Controller
public class RideController {

	@Autowired
	RideService rideService;

	@RequestMapping(value="/")
	public String registerPage(Model model)
	{
		model.addAttribute("registerUserForm", new User());
		return "register";
	}

	@RequestMapping(value="/registerUser")
	public String registerUserData(@ModelAttribute("registerUserForm")User user, Model model)
	{
		try
		{
			model.addAttribute("loginForm", new Login());
			rideService.saveUser(user);
			return "login";
		}
		catch(Exception e)
		{
			return "invalid";
		}
	}

	@RequestMapping(value="/loginUser")
	public String loginUserData(Model model, @ModelAttribute("loginForm")Login login)
	{
			
	        return "login"; 
	}

	@RequestMapping(value="/routeList")
	public String routeList(Model model, @ModelAttribute("loginForm")Login login)
	{
		try
		{
			User user=new User();
			user.setName(login.getUsername());
			user.setPassword(login.getPassword());
			model.addAttribute("loginForm", new Login());
			boolean check = rideService.checkUser(user);
			if(check)
			{
			List<Route> routesList = rideService.listRoutes(1);
			model.addAttribute("listRoutes", routesList);
			return "route";
			}
			else
				return "invalid";
		}
		catch(Exception e)
		{
			return "invalid";
		}
	}
	
	@RequestMapping(value="/routeListPagination")
	public String routeList1(Model model,@RequestParam("pageNo") int pageNo)
	{
		try
		{
			
			List<Route> routesList = rideService.listRoutes(pageNo);
			model.addAttribute("listRoutes", routesList);
			return "route";
		
		}
		catch(Exception e)
		{
			return "invalid";
		}
	}

	@RequestMapping(value="/carList")
	public String carList(Model model,@RequestParam int id)
	{
		try
		{
			List<Car> carsList = rideService.listCars();
			model.addAttribute("routeId", id);
			model.addAttribute("carsList", carsList);
			return "car";
		}
		catch(Exception e)
		{
			return "invalid";
		}
	}

	@RequestMapping(value="/userview")
	public String carList(Model model,@RequestParam int carId,@RequestParam int routeId)
	{
		try
		{
			Car car = rideService.carDetail(carId);
			model.addAttribute("car", car);

			Route route = rideService.routeDetail(routeId);
			model.addAttribute("route", route);
			return "userview";
		}
		catch(Exception e)
		{
			return "invalid";
		}
	}
}

