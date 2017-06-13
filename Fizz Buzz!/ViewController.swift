//  ViewController.swift
//  Fizz Buzz!
//  Created by Alden Prokup on 6/7/17.
//  Copyright © 2017 Alden Prokup. All rights reserved.

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    var number = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = "\(number)"
    }
    @IBAction func screenTapped(_ sender: Any)
    {
        print("Screen Tapped")
        number += 1
        if number % 15 == 0
        {
        print ("Fizz Buzz")
        view.backgroundColor = UIColor.red
        myNumberLabel.text = "Fizz Buzz"
        myNumberLabel.font = myNumberLabel.font.withSize(75)
        }
        else if number % 3 == 0
        {
        print("Fizz")
        view.backgroundColor = UIColor.green
        myNumberLabel.text = "Fizz"
        }
            else if number % 5 == 0
            {
            print("Buzz")
            view.backgroundColor = UIColor.purple
            myNumberLabel.text = "Buzz"
            }
        else
        {
            myNumberLabel.text = "\(number)"
            view.backgroundColor = UIColor.black
            myNumberLabel.font = myNumberLabel.font.withSize(100)
        }
        
        }

    @IBAction func longPress(_ sender: UILongPressGestureRecognizer)
    {
        print("Reset")
        number = 0
        myNumberLabel.text = "\(number)"
        view.backgroundColor = UIColor.black
        myNumberLabel.font = myNumberLabel.font.withSize(100)
    }


}

