//
//  ViewController.swift
//  Calculator
//
//  Created by Raja Sajid on 10/08/2014.
//www.sajiddesigner.com | www.optimumcreative.com
//  Copyright (c) 2014 Raja Sajid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber=0.0
    var secondNumber=0.0
    var operation=""
    var result=0.0
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    
    @IBOutlet var TxtBox1 : UITextField
    
    @IBOutlet var lbltxt : UILabel
    
    
    @IBAction func btn_zero(sender : AnyObject) {
        var number = sender.currentTitle
        lbltxt.text="0"
       
     TxtBox1.text=TxtBox1.text+number
        
    }
    
    @IBAction func btn_one(sender : AnyObject) {
var number = sender.currentTitle
        TxtBox1.text=TxtBox1.text+number
    }
    
    
    @IBAction func operation(sender : AnyObject) {
        operation=sender.currentTitle
        if(operation=="Clear")
        {
            firstNumber=0;
            secondNumber=0;
            operation=""
            result=0
            TxtBox1.text=""
            lbltxt.text="00"
        }
        else if(sender.currentTitle=="Backspace")
        {
            if(TxtBox1.text==""){}
            else{
            
            var currentEntry: String=TxtBox1.text
            currentEntry=dropLast(currentEntry)
            TxtBox1.text="\(currentEntry)"
                }
            
        }
        else {
        if(firstNumber==0){
            firstNumber=TxtBox1.text.bridgeToObjectiveC().doubleValue
            TxtBox1.text=""}
        //firstNumber=TxtBox1.text.toInt()!
        //TxtBox1.text=""
        }
        
        
    }
    
    
    @IBAction func doCalculate(sender : AnyObject) {
        
        secondNumber=TxtBox1.text.bridgeToObjectiveC().doubleValue
        
        if(operation=="+")
        {
        result=firstNumber+secondNumber
        lbltxt.text="\(result)"
        TxtBox1.text=""
        secondNumber=0
        firstNumber=result
        operation=""
        }
        
    if(operation=="-")
        {
            result=firstNumber-secondNumber
            lbltxt.text="\(result)"
            TxtBox1.text=""
            secondNumber=0
            firstNumber=result
            operation=""
        }
        
        if(operation=="X")
        {
            result=firstNumber*secondNumber
            lbltxt.text="\(result)"
            TxtBox1.text=""
            secondNumber=0
            firstNumber=result
            operation=""
        }
        if(operation=="/")
        {
            result=firstNumber/secondNumber
            lbltxt.text="\(result)"
            TxtBox1.text=""
            secondNumber=0
            firstNumber=result
            operation=""
        }
        
        
    }
    

}

