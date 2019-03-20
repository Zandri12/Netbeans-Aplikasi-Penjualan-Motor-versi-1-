/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TA;

import TA.LoadMenu;

/**
 *
 * @author Mustafa
 */
public class LoadScreen {
    
    public static void main(String[] args) {
        LoadMenu load = new LoadMenu();
        homes rgt = new homes();
        load.setVisible(true);
        load.setLocationRelativeTo(null);
        try {
            for (int row = 0; row <=100; row++) {
                Thread.sleep(100);
                load.lLoading.setText(Integer.toString(row)+"%");
                load.pbLoading.setValue(row);
                if (row == 100) {
                    
                    load.setVisible(false);
                    rgt.setVisible(true);
                }
            }
        } catch (InterruptedException e) {
        }
    }
}
