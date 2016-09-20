//
//  ViewController.swift
//  3
//
//  Created by Vova Lobanov on 11.07.16.
//  Copyright © 2016 Vova Lobanov. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var first: Double = 0.0
    var result: Double = 0.0
    var znak = ""
    
    
    @IBOutlet weak var output: UITextField!
    
    @IBAction func one(sender: AnyObject) {
    output.text! += "1"
    }
    
    @IBAction func two(sender: AnyObject) {
    output.text! += "2"
    }
    
    @IBAction func three(sender: AnyObject) {
    output.text! += "3"
    }
    
    @IBAction func four(sender: AnyObject) {
    output.text! += "4"
    }
    
    @IBAction func five(sender: AnyObject) {
    output.text! += "5"
    }
    
    @IBAction func six(sender: AnyObject) {
    output.text! += "6"
    }
    
    @IBAction func seven(sender: AnyObject) {
    output.text! += "7"
    }
    
    @IBAction func eight(sender: AnyObject) {
    output.text! += "8"
    }
    
    @IBAction func nine(sender: AnyObject) {
    output.text! += "9"
    }
    
    @IBAction func zero(sender: AnyObject) {
    output.text! += "0"
    }
    
    
    func check ()->(Bool)
    {
        if self.output.text == "" || self.output.text == nil || self.output.text! == "ошибка"         {
            return false
        }
        return true
    }
    
    
    
    @IBAction func point(sender: AnyObject)
    {
    if output.text!.containsString(".")
        {
            return
        }
        output.text! += "."
    }
    
    
    @IBAction func minus(sender: AnyObject)
    {
        znak = "-"
        if check()
        {
        first = Double(output.text!)!
        output.text! = ""
        }
    }
    
    @IBAction func plus(sender: AnyObject)
    {
        znak = "+"
        if check()
        {
        first = Double(output.text!)!
        output.text! = ""
        }
    }
    
    @IBAction func mult(sender: AnyObject)
    {
        znak = "*"
        if check()
        {
        first = Double(output.text!)!
        output.text = ""
        }
    }
    
    @IBAction func div(sender: AnyObject)
    {
        znak = "/"
        if check()
        {
        first = Double(output.text!)!
        output.text = ""
        }
    }
    
    @IBAction func C(sender: AnyObject)
    {
        output.text! = ""
        first = 0.0
    }

    @IBAction func enter(sender: AnyObject)
    {
        if check(){
       switch znak
       {
            case "+":
            result = first + Double(output.text!)!
            case "-":
            result = first - Double(output.text!)!
            case "*":
            result = first * Double(output.text!)!
            case "/":
            result = first / Double(output.text!)!
        default: return
        }
        output.text! = String(result)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

