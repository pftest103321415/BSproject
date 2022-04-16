package tw.leonchen.buycar.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.leonchen.buycarorder.model.Buycar;
import tw.leonchen.buycarorder.model.BuycarService;



@Controller
@RequestMapping("/Buycar")
@SessionAttributes(names = {"totalPages", "totalElements"})
public class BuycarController {
	
	@Autowired
	private BuycarService BCService;
	
	
	
	
	@GetMapping("/buycar.controller") 
	public String processQueryMainAction() {
		return "buycarorder/buycar";
	}
	
	
}
