package Dataparse.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController 
public class DataController {
	
	@RequestMapping(value="/dm")
	
	public ResponseEntity<DataManip> get()
	{
		DataManip dm=new DataManip ();
		dm.setName("H_R_C");
		dm.setGender("Male");
		dm.setCity("Hyderabad");
		
		return new 	ResponseEntity<DataManip> (dm, HttpStatus.OK);
		
	}
	

}
