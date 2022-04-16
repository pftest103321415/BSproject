package tw.leonchen.buycarorder.model;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Service
@Transactional
public class BuycarService {
	@Autowired
    private BuycarRepository poRep;
	
	public Buycar insert(Buycar po) {
		return poRep.save(po);
	}
	
	public Buycar findById(int orderid) {
		Optional<Buycar> op = poRep.findById(orderid);
		
		if(op.isPresent()) {
			return op.get();
		}
		
		return null;
	}
	
	public List<Buycar> findAll(){
		return poRep.findAll();
	}
	
	public Page<Buycar> findAllByPage(Pageable pageable){
		return poRep.findAll(pageable);
	}
}
