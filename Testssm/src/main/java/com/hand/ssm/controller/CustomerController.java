package com.hand.ssm.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Lang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hand.ssm.dto.Address;
import com.hand.ssm.dto.Customer;
import com.hand.ssm.service.CustomerService;


@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	
	
	//µÇÂ½
	@RequestMapping("/selectByName")
	public String selectByName(Map<String, Object> map,String firstName,HttpServletRequest request,HttpServletResponse response,HttpSession session){
		
		String firstName1 = request.getParameter("firstName");
		Customer Customer=new Customer();  	
		List<Customer> list=customerService.selectByName(firstName1);
		for (Customer customer2 : list) {
			if(customer2.getFirstName().equals(firstName1)){
				    session.setAttribute("firstName", firstName1);
				 
				    map.put("list", customerService.select(Customer));
					return"show";
				}else{
					return "login";
				}
		}
		return "login";
	}

	//²éÑ¯
	@RequestMapping("/select")
	public String select(Map<String, Object> map){	
		Customer Customer=new Customer();  	
		map.put("list", customerService.select(Customer));
		return"show";
	}
	//·ÖÒ³
	@RequestMapping("/selectpage")
	public String selectpage(Map<String, Object> map,HttpServletRequest request,HttpServletResponse response,HttpSession session){
		Customer Customer=new Customer();
	    Object name=session.getAttribute("firstName");
	    session.setAttribute("firstName", name);
		String pagenum=request.getParameter("pagenum");
		int num1=Integer.parseInt(pagenum);
		int num2=num1*15;
		map.put("list", customerService.selectpage(num2));
		return"show";
	}
	//Ìí¼Ó
	@RequestMapping("/tianjia")
	public String selectaddress(Map<String, Object> map,HttpSession session){
		Address address=new Address(); 
		Object name=session.getAttribute("firstName");
		
	    session.setAttribute("firstName", name);
		map.put("List", customerService.selectaddress(address));
		return"tianjia";
	}
	@RequestMapping("/tianjia1")
	public String tianjia1(Map<String, Object> map,HttpServletRequest request,HttpServletResponse response,HttpSession session){

		
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		Customer f=new Customer();
		f.setFirstName(firstName);
		f.setLastName(lastName);
		f.setStoreId(1);
		f.setAddressId(3);
		f.setEmail(email);
		f.setAddress(address);
		f.setCreateDate("2006-02-14 22:04:36");	
		customerService.insertOneItem(f);
		Customer Customer=new Customer();
		map.put("list", customerService.select(Customer));
		return "show";
	} 
	
	    //±à¼­
		@RequestMapping("/edit")
		public String selectById(Map<String, Object> map,HttpServletRequest request,HttpServletResponse response,HttpSession session){	
			Object name=session.getAttribute("firstName");
		    session.setAttribute("firstName", name);
			
			Customer Customer=new Customer();
			String customerId=request.getParameter("customer_id");
			List<Customer> list1=customerService.selectById(customerId);
			Address address=new Address();  	
			map.put("List2", customerService.selectaddress(address));
			map.put("list", list1);
			return "edit";
		}
		@RequestMapping("/update")
		public String update(Map<String, Object> map,HttpServletRequest request,HttpServletResponse response,HttpSession session){
			Object name=session.getAttribute("firstName");
		    session.setAttribute("firstName", name);
		    
			String customerId=request.getParameter("customer_id");
			
			List<Customer> list1=customerService.selectadId(customerId);
			
			
			int addressId=list1.get(0).getAddressId();
			 
			String  address1=request.getParameter("address");
			
			Address address=new Address(); 
			address.setAddressId(addressId);
		    address.setAddress(address1);
		    int list4=customerService.updatead(address);
		    
		    
		    String firstName=request.getParameter("firstName");
			String lastName=request.getParameter("lastName");
			String email=request.getParameter("email");
			
			Customer customer=new Customer();
			customer.setCustomerId(customerId);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmail(email);
			
			
			int list3=customerService.update(customer);
			map.put("list", customerService.select(customer));
			return "show";
			
		}
		
		@RequestMapping("/delete")
		public String delete(Map<String, Object> map,HttpServletRequest request,HttpServletResponse response){	
			Customer customer=new Customer();
			String customerId=request.getParameter("customer_id");
			int list3=customerService.delete(customerId);
			map.put("list", customerService.select(customer));
			return "show";
		}
		
}