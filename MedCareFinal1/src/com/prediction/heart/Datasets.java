/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prediction.heart;


import weka.core.Instances;
import weka.core.converters.ConverterUtils;
/**
 *
 * @author Puri
 */
public class Datasets {
        public static Instances getDataFromFile(String filename) throws Exception {
        ConverterUtils.DataSource source = new ConverterUtils.DataSource(filename);
        Instances data = source.getDataSet();
        // setting class attribute if the data format does not provide this information
        // For example, the XRFF format saves the class attribute information as well
//        if (data.classIndex() == -1)
//            data.setClassIndex(data.numAttributes() - 1);
        return data;
    }
}
