package tw.leonchen.ecpay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@ResponseBody
@Controller
public class test {
	@RequestMapping(path = "/hello.controller", method = RequestMethod.GET)
	public String processAction() {
		return "TEST";
	}
	

}
