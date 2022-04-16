package tw.leonchen.com.javatechie.spring.paypal.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.paypal.api.payments.Links;

import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

import tw.leonchen.com.javatechie.spring.paypal.model.PaypalRepository;
import tw.leonchen.com.javatechie.spring.paypal.model.Paypaldata;
import tw.leonchen.com.javatechie.spring.paypal.model.PaypaldataService;

@Controller
public class PaypalController {

	@Autowired
    PaypalService service;
	@Autowired
	PaypaldataService pservice;


    
	public static final String SUCCESS_URL = "pay/success";
	public static final String FAILED_URL = "pay/failed";

	@GetMapping("/789")
	public String home() {
		return "th/home";
	}

	@PostMapping("/pay")
	public String payment(@ModelAttribute("order") Order order) {
		try {
			Payment payment = service.createPayment(order.getPrice(), order.getCurrency(), order.getMethod(),
					order.getIntent(), order.getDescription(), "http://localhost:8080/" + FAILED_URL,
					"http://localhost:8080/" + SUCCESS_URL);
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					return "redirect:"+link.getHref();
				}
			}
			
		} catch (PayPalRESTException e) {
		
			e.printStackTrace();
		}
		return "redirect:/";
	}
	
	 @GetMapping(value = FAILED_URL)
	    public String cancelPay() {
	        return "th/failed";
	    }


	    @GetMapping(value = SUCCESS_URL)
	    public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
	        try {
	            Payment payment = service.executePayment(paymentId, payerId);
	            System.out.println(payment.toJSON());
	            if (payment.getState().equals("approved")) {
	            	
	            	Paypaldata paypal1=new Paypaldata();
	            	paypal1.setCustomfield1("123456");
	            	paypal1.setRtncode(payment.getState());
	            	paypal1.setTradeno(payment.getId());
	            	paypal1.setTradedate(payment.getCreateTime());
	            	paypal1.setTradeamt(payment.getTransactions().get(0).getAmount().getTotal());
	            	
	            	
	            	
	            	pservice.insert(paypal1);
	            	
	                return "th/success";
	            }
	        } catch (PayPalRESTException e) {

	         System.out.println(e.getMessage());
	        }
	        return "redirect:/";
	    }

}
