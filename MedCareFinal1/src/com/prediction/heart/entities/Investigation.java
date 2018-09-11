/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prediction.heart.entities;

import com.prediction.heart.QuestionType;

/**
 *
 * @author Puri
 */
public class Investigation {
    double age = Double.NaN;
    double gender = Double.NaN;
    double chest_pain = Double.NaN;
    double trest_bp = Double.NaN;
    double chol = Double.NaN;
    double fasting_sugar = Double.NaN;
    double rest_ecg = Double.NaN;
    double thalach = Double.NaN;
    double thal = Double.NaN;
    double oldpeak = Double.NaN;
    double exang = Double.NaN;
    double slope = Double.NaN;
    double ca = Double.NaN;
    double cv = Double.NaN;
    double cigs = Double.NaN;
    double year = Double.NaN;
    double pulserate = Double.NaN;
    double l_bp = Double.NaN;
    double h_bp = Double.NaN;
    double f_h = Double.NaN;
    double alch = Double.NaN;
    
    
    


    public void setValue(QuestionType type, double value){
        if(value != Double.NaN) {
            if (type == QuestionType.AGE) this.age = value;
            if (type == QuestionType.GENDER) this.gender = value;
            if (type == QuestionType.TREST_BP) this.trest_bp = value;
            if (type == QuestionType.CHEST_PAIN) this.chest_pain = value;
            if (type == QuestionType.CHOLESTEROL) this.chol = value;
            if (type == QuestionType.FASTING_SUGAR) this.fasting_sugar = value;
            if (type == QuestionType.REST_ECG) this.rest_ecg = value;
            if (type == QuestionType.CIGS) this.cigs = value;
            if (type == QuestionType.YEAR) this.year = value;
            if (type == QuestionType.H_BP) this.h_bp = value;
            if (type == QuestionType.L_BP) this.l_bp = value;
            if (type == QuestionType.PULSERATE) this.pulserate = value;
            if (type == QuestionType.CA) this.ca = value;
            if (type == QuestionType.ALCH) this.alch = value;
            if (type == QuestionType.F_H) this.f_h = value;
        }
    }

    public double getAge() {
        return age;
    }

    public void setAge(double age) {
        this.age = age;
    }

    public double getGender() {
        return gender;
    }

    public void setGender(double gender) {
        this.gender = gender;
    }

    public double getChestPain() {
        return chest_pain;
    }

    public void setChestPain(double chest_pain) {
        this.chest_pain = chest_pain;
    }

    public double getRestECG() {
        return rest_ecg;
    }

    public void setRestECG(double rest_ecg) {
        this.rest_ecg = rest_ecg;
    }

    public double getCholesterol() {
        return chol;
    }

    public void setCholesterol(double chol) {
        this.chol = chol;
    }

    public double getFastingSugar() {
        return fasting_sugar;
    }

    public void setFastingSugar(double fasting_sugar) {
        this.fasting_sugar = fasting_sugar;
    }

    public double getCigs() {
        return cigs;
    }

    public void setCigs(double cigs) {
        this.cigs = cigs;
    }

    public double getYear() {
        return year;
    }

    public void setYear(double year) {
        this.year = year;
    }

    public double getLBP() {
        return l_bp;
    }

    public void setLBP(double l_bp) {
        this.l_bp = l_bp;
    }

    public double getHBP() {
        return h_bp;
    }

    public void HBP(double h_bp) {
        this.h_bp = h_bp;
    }
    
    public double getPulserate() {
        return pulserate;
    }

    public void setPulserate(double pulserate) {
        this.pulserate = pulserate;
    }
    
    public double getExang() {
        return exang;
    }

    public void setExang(double exang) {
        this.exang = exang;
    }
        public double getCA() {
        return ca;
    }

    public void setCA(double ca) {
        this.ca = ca;
    }
    
    public double getAlch(){
        return alch; 
    }
    
    public void setAlch(double alch){
        this.alch = alch;
    }
    
    public double getF_H(){
        return f_h;
    }
    
    public void setF_H(double f_h){
        this.f_h = f_h;
    }
    public void setCv(double cv) {
        this.cv= cv;
    }
    public double getCv() {
        return cv;
    }

   
    
}
