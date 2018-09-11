/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prediction.heart.nb;

import java.util.ArrayList;
import java.util.Map;
import weka.classifiers.Evaluation;
import weka.classifiers.bayes.NaiveBayes;
import weka.core.Attribute;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;

import com.prediction.heart.QuestionType;
import com.prediction.heart.entities.Investigation;
import com.prediction.heart.Util;
import com.prediction.heart.Datasets;
import java.util.Arrays;
/**
 *
 * @author Puri
 */
public class NaiveBayesClassifier {
    public static String resulte;
    public static NaiveBayes train(String dataFile, String modelFile) throws NoClassDefFoundError{
		try {
			System.out.println("Train");
			Instances data = Datasets.getDataFromFile(dataFile);
			
			data.setClassIndex(data.numAttributes() - 1); // setting last attribute column as class
			System.out.println("Class Attributes: " + data.classAttribute());
			System.out.println("Num attributes: " + data.numAttributes());
          
			NaiveBayes bayes = new NaiveBayes();
			bayes.buildClassifier(data);

			System.out.println("Save");
			Util.save(modelFile, bayes);
         
			System.out.println("Evaluation");
			Evaluation eval = new Evaluation(data);
			eval.evaluateModel(bayes, data);
			System.out.println(eval.toSummaryString("\nResults\n", false));
			System.out.println("Confusion Matrix");
			double[][] cmMatrix = eval.confusionMatrix();
			for (double[] aCmMatrix : cmMatrix) {
				for (int col_i = 0; col_i < cmMatrix.length; col_i++) {
					System.out.print(aCmMatrix[col_i]);
					System.out.print("|");
				}
				System.out.println();
			}

			System.out.println("Test");
			for (int i = 0; i < 1500; i++) {
				Instance instance = data.instance(i);
				instance.setClassMissing();
				double c = bayes.classifyInstance(instance);
				System.out.println(instance + " Class: " + c);
			} 
			return bayes;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public static String medicalBot(String modelFile, Map<QuestionType, Double> parameters) {
		try {
			NaiveBayes model = (NaiveBayes) Util.load(modelFile);
			int numAttributes = 13;
			Attribute ageAttr = new Attribute("age");
			Attribute genderAttr = new Attribute("gender");
			Attribute cpAttr = new Attribute("chest_pain");
			Attribute cigsAttr = new Attribute("cigs");
			Attribute cholAttr = new Attribute("cholesterol");
			Attribute yearAttr = new Attribute("year");
			Attribute rest_ecgAttr = new Attribute("rest_ecg");
			Attribute h_bpAttr = new Attribute("h_bp");
                        Attribute l_bpAttr = new Attribute("l_bp");
                        Attribute pulserateAttr = new Attribute("pulserate");
                        Attribute f_hAttr = new Attribute("f_h");
                        Attribute alchAttr = new Attribute("alch");
                        

			ArrayList<String> fvClassVal = new ArrayList<>(7);
			fvClassVal.add("0");
			fvClassVal.add("1");
                        fvClassVal.add("2");
                        fvClassVal.add("3");
                        fvClassVal.add("4");
                        fvClassVal.add("5");
                        fvClassVal.add("6");
                        fvClassVal.add("7");
                        
			Attribute classAttribute = new Attribute("class", fvClassVal);

			ArrayList<Attribute> fvAttributes = new ArrayList<>(numAttributes);
			
			fvAttributes.add(genderAttr);
                        fvAttributes.add(ageAttr);
                        fvAttributes.add(cigsAttr);
                        fvAttributes.add(yearAttr);
                        fvAttributes.add(h_bpAttr);
                        fvAttributes.add(l_bpAttr);
                        fvAttributes.add(pulserateAttr);
                        fvAttributes.add(cholAttr);
			fvAttributes.add(cpAttr);
			fvAttributes.add(rest_ecgAttr);
                        fvAttributes.add(alchAttr);
                        fvAttributes.add(f_hAttr);
			fvAttributes.add(classAttribute);

			Instances instances = new Instances("Rel", fvAttributes, 1);
			instances.setClassIndex(numAttributes - 1);

			Instance instance = new DenseInstance(numAttributes);
			Investigation investigation = new Investigation();
			for (Map.Entry<QuestionType, Double> entry : parameters.entrySet()) {
				investigation.setValue(entry.getKey(), entry.getValue());
				
			
				instance.setValue(fvAttributes.get(0), investigation.getGender());
                                instance.setValue(fvAttributes.get(1), investigation.getAge());
				instance.setValue(fvAttributes.get(2), investigation.getCigs());
				instance.setValue(fvAttributes.get(3), investigation.getYear());
				instance.setValue(fvAttributes.get(4), investigation.getHBP());
				instance.setValue(fvAttributes.get(5), investigation.getLBP());
				instance.setValue(fvAttributes.get(6), investigation.getPulserate());
				instance.setValue(fvAttributes.get(7), investigation.getCholesterol());
				instance.setValue(fvAttributes.get(8), investigation.getChestPain());
                                instance.setValue(fvAttributes.get(9), investigation.getRestECG());
                                instance.setValue(fvAttributes.get(10), investigation.getAlch());
                                instance.setValue(fvAttributes.get(11), investigation.getF_H());
                                instance.setValue(fvAttributes.get(12), investigation.getCv());
				instances.add(instance);
			}
			double[] prob = model.distributionForInstance(instances.get(0));
                        System.out.println("Prob:"+Arrays.toString(prob));
			double index = model.classifyInstance(instances.get(0));
                        System.out.println("Index:" + index);
			double score = prob[(int) index] * 100;
                        if(index == 0){
                            resulte = "No possibility of heart diseases " ;
                        }
                        if(index == 1){
                            resulte = "Possibility of Angina: diagnosis of Angina is necessary." +" \n" 
                                    + "It is a symptom of an underlying heart problem, usually coronary heart disease (CHD)."+" \n"
                                    + "All chest pain should be checked out by a healthcare provider. If you have chest pain, your doctor will want to find out \n"
                                    + " whether it's angina and if it is, whether the angina is stable or unstable."+" \n "
                                    + "If it's unstable, you may need emergency medical treatment to try to prevent a heart attack.";
                        }
                        if(index == 2){
                            resulte = "Possibility of heart diseases: diagnosis of Atrial Fibrillation."+" \n"
                                    + "Which is  a problem with your heart's electrical activity. You and your doctor have treatment options if your symptoms become too severe."+" \n"
                                    + "It can't pump blood through its chambers and out to your body as well as it should."+" \n"
                                    + " Sometimes blood can pool in the heart and form clots, which could lead to a stroke.";
                        }
                        if(index == 3){
                            resulte = "Possibility of heart diseases: diagnosis of chronic heart failure."+" \n"
                                    + "which refers to the stage in which fluid builds up around the heart and causes it to pump inefficiently."+" \n"
                                    + "Treatments can be : Controlling High Blood pressure, Cholesterol and Diabeties";
                        }
                        if(index == 4){
                            resulte = "Possibility of heart diseases: diagnosis of myocardial infraction is necessary"+" \n"
                                    + "which is a life threatening condition"+" \n"
                                    + "To improve your health condition you need to control your Cholesterol level, Blood Sugar,Triglyceride levels."+" \n";
                        }
                        if(index == 5){
                            resulte = "Possibility of heart diseases : diagnosis of bradycardia is necessary"+" \n"
                                    + "To Prevent Bradycardia your need to:"+" \n"
                                    + "Exercise and eat a healthy diet \n"
                                    + "Maintain a healthy weight "+"\n"
                                    + "Keep blood pressure and cholesterol under control "+"\n"
                                    + "Don't smoke"+" \n"
                                    + "If you drink, do so in moderation "+"\n"
                                    + "Don't use recreational drugs "+"\n"
                                    + "Manage Stress";
                        }
                        if(index == 6){
                            resulte = "Possibility of heart diseases : diagnosis of dialated cardiomyopathy "+"\n"
                                    + "To Prevent cardiomyopathy you should have less sodium, based on your doctor's recommendations."+"\n"
                                    + " He may point you toward aerobic exercise, but don't do heavy weightlifting. ";
                        }
                        if(index == 7){
                            resulte = "Possibility of heart diseases : diagnosis of  peripheral vascular(artery) diseases(PAD) is necessary"+"\n"
                                    + "Some Lifestyle and home remedies can be: "+"\n"
                                    + "Stop smoking: Smoking contributes to constriction and damage of your arteries and is a significant risk factor for the development and worsening of PAD. If you smoke, quitting is the most important thing you can do to reduce your risk of complications."+" \n"
                                    + "Exercise: This is a key component. Success in the treatment of PAD is often measured by how far you can walk without pain. Proper exercise helps condition your muscles to use oxygen more efficiently."+" \n"
                                    + "Eat a healthy diet. A heart-healthy diet low in saturated fat can help control your blood pressure and cholesterol levels, which contribute to atherosclerosis."+" \n"
                                    + "Avoid certain cold medications. Over-the-counter cold remedies that contain pseudoephedrine (Advil Cold & Sinus, Aleve-D Sinus & Cold, others) constrict your blood vessels and may increase your PAD symptoms."+" \n"
                                    + " \n";
                        }
                        
			return "\n" + resulte; 
                        
                       
                }
		catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
        
}
