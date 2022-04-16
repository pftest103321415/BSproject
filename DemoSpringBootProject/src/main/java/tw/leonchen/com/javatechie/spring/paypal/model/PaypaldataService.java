package tw.leonchen.com.javatechie.spring.paypal.model;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class PaypaldataService {
	
	@Autowired
	private  PaypalRepository pRepo;
	
	public Paypaldata insert (Paypaldata paypaldata ) {
		return pRepo.save(paypaldata);
	}
	

}
