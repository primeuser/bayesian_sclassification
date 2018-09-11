/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prediction.heart.question;

import com.prediction.heart.QuestionType;
import com.prediction.heart.entities.Question;
import com.prediction.heart.entities.Investigation;
/**
 *
 * @author Puri
 */
public class QuestionDao {
 public Question getQuestion(QuestionType type){
        Question question = new Question();
        question.setQuestion("What is "+type.toString()+"?");
        question.setType(type);
        return question;
    }

    public Question getQuestion(Investigation investigation){
        Question question = new Question();

        if(Double.isNaN(investigation.getAge())) {
            question.setQuestion("What is your age?");
            question.setType(QuestionType.AGE);
            return question;
        }

        if(Double.isNaN(investigation.getGender())){
            question.setQuestion("What is the gender of the patient");
            question.setType(QuestionType.GENDER);
            return question;
        }
        if(Double.isNaN(investigation.getChestPain())){
            question.setQuestion("What is the level of glucose tolerance test?");
            question.setType(QuestionType.CHEST_PAIN);
            return question;
        }
//        if(Double.isNaN(investigation.getTrestBP())){
//            question.setQuestion("How much is the diastolic bp?");
//            question.setType(QuestionType.TREST_BP);
//            return question;
//        }
        if(Double.isNaN(investigation.getCholesterol())){
            question.setQuestion("What is the value of Tricep Thickness?");
            question.setType(QuestionType.CHOLESTEROL);
            return question;
        }
        if(Double.isNaN(investigation.getFastingSugar())){
            question.setQuestion("What is the level of two hour serum?");
            question.setType(QuestionType.FASTING_SUGAR);
            return question;
        }
        if(Double.isNaN(investigation.getCigs())){
            question.setQuestion("Enter the value of BMI?");
            question.setType(QuestionType.CIGS);
            return question;
        }
        if(Double.isNaN(investigation.getYear())){
            question.setQuestion("Enter the value of pedigree?");
            question.setType(QuestionType.YEAR);
            return question;
        }
        if(Double.isNaN(investigation.getLBP())){
            question.setQuestion("Enter the value of pedigree?");
            question.setType(QuestionType.L_BP);
            return question;
        }
        if(Double.isNaN(investigation.getHBP())){
            question.setQuestion("Enter the value of pedigree?");
            question.setType(QuestionType.H_BP);
            return question;
        }
        if(Double.isNaN(investigation.getPulserate())){
            question.setQuestion("Enter the value of pedigree?");
            question.setType(QuestionType.PULSERATE);
            return question;
        }
//        if(Double.isNaN(investigation.getSlope())){
//            question.setQuestion("Enter the value of pedigree?");
//            question.setType(QuestionType.SLOPE);
//            return question;
//        }
        if(Double.isNaN(investigation.getCA())){
            question.setQuestion("Enter the value of pedigree?");
            question.setType(QuestionType.CA);
            return question;
        }




        question.setQuestion("Anything else?");
        question.setType(QuestionType.GENERAL);
        return question;
    }
}
   
