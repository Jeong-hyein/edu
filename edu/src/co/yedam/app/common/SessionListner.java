package co.yedam.app.common;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListner
 *
 */
@WebListener
public class SessionListner implements HttpSessionListener, HttpSessionAttributeListener {

	// web.xml에서 <session-timeout>1</session-timeout>: session 유지시간 1분


    public void sessionCreated(HttpSessionEvent session)  { //session 생성될때
         System.out.println("session 생성" + session.getSession().getId());
    }

    public void sessionDestroyed(HttpSessionEvent arg0)  { //session 제거 될때
    	System.out.println("session 제거");
    }

    public void attributeAdded(HttpSessionBindingEvent event)  { //새로운 속성 추가 될때
    	System.out.println("session에 속성 추가" + event.getName() + ": " + event.getValue());
    }


    public void attributeRemoved(HttpSessionBindingEvent arg0)  { //속성을 제거할때,
    	System.out.println("session에 속성 제거");
    }

    public void attributeReplaced(HttpSessionBindingEvent arg0)  { //속성값이 변경될때
    	System.out.println("session에 속성값 변경");
    }
	
}
