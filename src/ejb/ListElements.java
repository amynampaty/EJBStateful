package ejb;


import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateful;
import javax.servlet.annotation.WebServlet;


@Stateful

public class ListElements implements ListElementsRemotes{
	
	List<Integer> values=new ArrayList<>();

	
	public void addElement(int e) {
	values.add(e);
	}

	
	public void removeElement(int e) {
	
		values.remove(new Integer(e));
		
	}

	
	public List<Integer> getElements() {
return values;
	}



}
