//
//  ViewController.swift
//  Resisters APP
//
//  Created by Harsh Patel on 10/25/15.
//  Copyright © 2015 Harsh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //var resistanceDigit = 2;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var ans1 = colorCode(9)
        var ans2 = colorCode(0)
        //var multipliedVal = multiplier(1000, suffix: "K")
        var totalColor = colorMult(1000)
        
        print (ans1 + " " + ans2 + " " + " " + totalColor)
        //print (ans2)
        

    }
    func multiplier(multNum: Int, suffix: String ) -> Int{
        
        
        if (suffix == "K"){
        print (multNum * 1000)
            return (multNum * 1000)
        
        }
        else if (suffix == "M"){
            return (multNum * 1000000)}
        else{
            return (multNum)}
        
        }
        
        
    
    
    func colorCode(resistanceNum: Int) -> String {
        
        
        switch (resistanceNum){
        case 0:
            return "Black"
        case 1:
            return "Brown"
        case 2:
            return "Red"
        case 3:
            return "Orange"
        case 4:
            return "Yellow"
        case 5:
            return "Green"
        case 6:
            return "Blue"
        case 7:
            return "Violet"
        case 8:
            return "Gray"
        case 9:
            return "White"
        default:
            return "Error"
        }
    
    
    }
    func colorMult(totalResistance: Int) -> String {
        print (totalResistance)
        
            if (totalResistance >= 1 && totalResistance <= 9){
            
            return "Black"
            
            }else if (totalResistance >= 10 && totalResistance <= 99){
                return "Brown"
            }else if (totalResistance >= 100 && totalResistance <= 999){
            return "Red"
            
            }else if (totalResistance >= 1000 && totalResistance <= 9999){
            return "Orange"
            
            }else if (totalResistance >= 10000 && totalResistance <= 99999){
                print (String(totalResistance) + "in here")
            return "Yellow"
            
            }else if (totalResistance >= 100000 && totalResistance <= 999999){
            return "Green"
            
            }else if (totalResistance >= 1000000 && totalResistance <= 9999999){
                return "Blue"
                
            }else if (totalResistance >= 10000000 && totalResistance <= 99999999){
                return "Violet"
            }
            else { return "Error" }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

