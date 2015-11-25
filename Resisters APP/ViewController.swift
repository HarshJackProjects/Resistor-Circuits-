//
//  ViewController.swift
//  Resisters APP
//
//  Created by Harsh Patel on 10/25/15.
//  Copyright © 2015 Harsh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var results: UILabel!
    
    @IBAction func colorOneButton(sender: UIButton) {
        print("one")
    }
    @IBOutlet weak var colorStripeOne: UIView!
    
    
    @IBAction func colorTwoButton(sender: UIButton) {
        print("Two")
    }
    @IBOutlet weak var colorStripeTwo: UIView!
    
    
    @IBAction func colorThreeButton(sender: UIButton) {
        print("Three")
    }
    @IBOutlet weak var colorStripeThree: UIView!
    
    
    @IBAction func colorFourButton(sender: UIButton) {
        print("Four")
    }
    @IBOutlet weak var colorStripeFour: UIView!
   
    
    
    // Stripe Color Function
    func stripeColor (stripeView :UIView ,stripeColor :String){
    
        switch (stripeColor){
        case "Black":
            return stripeView.backgroundColor = UIColor.blackColor()
        case "Brown":
            return stripeView.backgroundColor = UIColor.brownColor()
        case "Red":
            return stripeView.backgroundColor = UIColor.redColor()
        case "Orange":
            return stripeView.backgroundColor = UIColor.orangeColor()
        case "Yellow":
            return stripeView.backgroundColor = UIColor.yellowColor()
        case "Green":
            return stripeView.backgroundColor = UIColor.greenColor()
        case "Blue":
            return stripeView.backgroundColor = UIColor.blueColor()
        case "Purple":
            return stripeView.backgroundColor = UIColor.purpleColor()
        case "Gray":
            return stripeView.backgroundColor = UIColor.grayColor()
        case "white":
            return stripeView.backgroundColor = UIColor.whiteColor()
        default:
            return stripeView.backgroundColor = UIColor.whiteColor()
    }
    }
    @IBAction func generate(sender: AnyObject) {
        // var firstNum = Int(firstNumber.text!)!
       // var secondNum = Int (secondNumber.text!)!
        let characters = Array(combinedInput.text!.characters)
        
        var firstChar = String(characters[0])
        var secondChar = String(characters[1])
        
        var firstNum = Int(firstChar)
        var secondNum = Int(secondChar)
        
        var multNum = 1
       // print (firstNum)
        //User Input to the multiplyer
        
        var stringCount = Int ((combinedInput.text?.characters.count)!)
        var thirdNum = stringCount - 2
        
        
        
        var ans1 = colorCode(firstNum!)
        //Calling Stripe 1 Color from Function
        stripeColor(colorStripeOne,stripeColor: ans1)
        
        var ans2 = colorCode(secondNum!)
        // Calling Stripe 2 Color from Fruction
        stripeColor(colorStripeTwo,stripeColor: ans2)
        
        var colorShow = colorCode(thirdNum)
        // Calling Stripe 3 Color from Fruction
        stripeColor(colorStripeThree,stripeColor:colorShow)
        
        results.text = (ans1 + " " + ans2 + " " + colorShow)
        
    }
    @IBOutlet weak var combinedInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        generate(self)
        
        //stripeColor(colorStripeTwo,stripeColor: "one")
        //self.colorStripeOne.backgroundColor = UIColor.Color()
        // Do any additional setup after loading the view, typically from a nib.
        //var ans1 = colorCode(9)
      //  var ans2 = colorCode(0)
        //var multipliedVal = multiplier(1000, suffix: "K")
       // var totalColor = colorMult(1000)
        
        //print (ans1 + " " + ans2 + " " + " " + totalColor)
        //print (ans2)
 
    }
    /*
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
        
        
    */
    
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
            return "Purple"
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
