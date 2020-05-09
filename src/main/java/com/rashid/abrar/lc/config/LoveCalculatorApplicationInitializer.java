package com.rashid.abrar.lc.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class LoveCalculatorApplicationInitializer implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
			AnnotationConfigWebApplicationContext annotationConfigApplicationContext = new AnnotationConfigWebApplicationContext();
			annotationConfigApplicationContext.register(LoveCalculatorAppConfig.class);
			
			DispatcherServlet dispatcherServlet = new DispatcherServlet(annotationConfigApplicationContext);
			
			ServletRegistration.Dynamic myCustomDispatcherServletDynamic = servletContext.addServlet("myDispatcherServlet", dispatcherServlet);
			
			myCustomDispatcherServletDynamic.setLoadOnStartup(1);
			myCustomDispatcherServletDynamic.addMapping("/mywebsite.com/*");
	

	}

}
