
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;


@WebListener
public class SessionListener implements HttpSessionAttributeListener {

	public SessionListener() {
	}

	public void attributeAdded(HttpSessionBindingEvent event) {
		System.out.println("The Attribute Added to Session.\n");
	}

	public void attributeRemoved(HttpSessionBindingEvent event) {
		System.out.println("The Attribute Removed from Session.");
	}

	public void attributeReplaced(HttpSessionBindingEvent arg0) {
	}

}
