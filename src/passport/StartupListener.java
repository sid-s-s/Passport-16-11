package passport;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;

@WebServlet("/StartupListener")
public class StartupListener extends HttpServlet implements ServletContextListener {
    private static final long serialVersionUID = 1L;

    public void init(ServletConfig config) throws ServletException {    
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
    }
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Logger logger = null;
        String log4jFile = sce.getServletContext().getInitParameter("C:\\Users\\admin\\Desktop\\PassportWeb.log");
        DOMConfigurator.configure(sce.getServletContext().getRealPath(log4jFile));
        logger = LogManager.getLogger(StartupListener.class.getName());
        logger.debug("Loaded: " + log4jFile);   
    }
}