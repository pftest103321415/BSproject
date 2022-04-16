package tw.leonchen.ecpay.model;



import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface dictRepository extends JpaRepository<Dict, String> {

	Page<Dict> findBycustomField1(Pageable pageable,String customField1);
	

	

}
