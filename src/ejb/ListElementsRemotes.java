package ejb;

import java.util.List;
import javax.ejb.Remote;

@Remote
public interface ListElementsRemotes {
	
	void addElement(int a);
	void removeElement(int a);
	
	List<Integer> getElements();
	

}
