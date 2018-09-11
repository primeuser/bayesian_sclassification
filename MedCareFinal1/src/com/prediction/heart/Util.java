/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prediction.heart;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import weka.core.SerializationHelper;

/**
 *
 * @author Puri
 */
public class Util {
    public static List<String> read1(String filename) throws Exception {
        List<String> data = new ArrayList<>();
        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(filename), "UTF-8"));

        for (String line; (line = reader.readLine()) != null; ) {
            data.add(line);
        }
        return data;
    }

    public static List<String[]> read(String filename) throws Exception {
        List<String[]> data = new ArrayList<>();
        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(filename), "UTF-8"));

        for (String line; (line = reader.readLine()) != null; ) {
            String[] tokens = line.split(",");
            data.add(tokens);
        }
        return data;
    }

    public static int write(List<String[]> data) throws FileNotFoundException {
        //TODO
        return 1;
    }

    // serialize model
    public static void save(String filename, Object obj) throws Exception {
        SerializationHelper.write(filename, obj);
    }

    // deserialize model
    public static Object load(String filename) throws Exception {
        return SerializationHelper.read(filename);
    }

    public static long tic() {
        return System.currentTimeMillis();
    }

    public static double tac(long t) {
        return (System.currentTimeMillis() - t) / 1000.0; //sec.
    }

    public static double tac(double t) {
        return System.currentTimeMillis() / 1000.0 - t; //sec.
    }


    
}
