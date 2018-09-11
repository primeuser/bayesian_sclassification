/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prediction.heart;
import weka.gui.GenericPropertiesCreator;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prediction.heart.nb.NaiveBayesClassifier;

/**
 *
 * @author Puri
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String HOME = "/";
	private static final String FORM = "/form";
        public double[] value = new double[5]; 
        public static double chol1;
        public static double hbp1;
        public static double smoke1;
        public static double alch1;
        public static double pulse_rate1;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request,response);
	}
		

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String result = "";
		try {
			Map<QuestionType, Double> paramaters = new HashMap<QuestionType, Double>();
			paramaters.put(QuestionType.AGE, Double.parseDouble(request.getParameter("age")));
			paramaters.put(QuestionType.GENDER, Double.parseDouble(request.getParameter("gender")));
                        paramaters.put(QuestionType.CHEST_PAIN, Double.parseDouble(request.getParameter("chest_pain")));
                        paramaters.put(QuestionType.CIGS, Double.parseDouble(request.getParameter("cigs")));
                        paramaters.put(QuestionType.YEAR, Double.parseDouble(request.getParameter("year")));
                        paramaters.put(QuestionType.REST_ECG, Double.parseDouble(request.getParameter("rest_ecg")));
			paramaters.put(QuestionType.H_BP, Double.parseDouble(request.getParameter("h_bp")));
                        paramaters.put(QuestionType.L_BP, Double.parseDouble(request.getParameter("l_bp")));
                        paramaters.put(QuestionType.PULSERATE, Double.parseDouble(request.getParameter("pulserate")));
			paramaters.put(QuestionType.CHOLESTEROL, Double.parseDouble(request.getParameter("chol")));
                        paramaters.put(QuestionType.F_H, Double.parseDouble(request.getParameter("f_h")));
                        paramaters.put(QuestionType.ALCH, Double.parseDouble(request.getParameter("alch")));
//			paramaters.put(QuestionType.THALACH, Double.parseDouble(request.getParameter("thalach")));
//                        paramaters.put(QuestionType.EXANG, Double.parseDouble(request.getParameter("exang")));
//                        paramaters.put(QuestionType.SLOPE, Double.parseDouble(request.getParameter("slope")));
//                        paramaters.put(QuestionType.CA, Double.parseDouble(request.getParameter("ca")));
//                        paramaters.put(QuestionType.THAL, Double.parseDouble(request.getParameter("thal")));
//                        paramaters.put(QuestionType.OLDPEAK, Double.parseDouble(request.getParameter("oldpeak")));
			/*ServletContext context = getServletContext();*/
			String dataFile = getServletContext().getRealPath("data/datasets/book2(2).arff");
			String modelFile = getServletContext().getRealPath("data/realfinalmodel.nb.model");
			/*String dataFile = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/data/datasets/heart.arff";
			String modelFile = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ request.getContextPath() + "/data/heart.nb.model";*/
			/*String dataFile =  "data/datasets/heart.arff";
			String modelFile = "data/heart.nb.model";*/
                        NaiveBayesClassifier.train(dataFile, modelFile);
			result = NaiveBayesClassifier.medicalBot(modelFile, paramaters);
                        
                        chol1=Double.parseDouble(request.getParameter("chol"));
                       hbp1=Double.parseDouble(request.getParameter("h_bp"));
                       smoke1=Double.parseDouble(request.getParameter("cigs"));
                       alch1=Double.parseDouble(request.getParameter("alch"));
                       pulse_rate1=Double.parseDouble(request.getParameter("pulserate"));
                        
                        			
                        
                     request.setAttribute("hbp1", request.getParameter("h_bp"));
                     request.setAttribute("chol1",request.getParameter("chol"));
                     request.setAttribute("smoke1",request.getParameter("cigs1"));
                     request.setAttribute("alch1",request.getParameter("alch"));
                      request.setAttribute("pulse_rate1",request.getParameter("pulserate"));  
                        
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("result", result);
		System.out.println(result);
		RequestDispatcher rd = request.getRequestDispatcher("output.jsp");
		rd.forward(request, response);
	}
		
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String path = request.getServletPath();
	    switch (path) {
	      case HOME:
	    	  RequestDispatcher home = request.getRequestDispatcher("index.jsp");
	  		  home.forward(request, response);
	        break;
	      case FORM:
	    	  RequestDispatcher form = request.getRequestDispatcher("newinterface.jsp");
		  		form.forward(request, response);
	        break;

	       
	    }
	}
    
}
