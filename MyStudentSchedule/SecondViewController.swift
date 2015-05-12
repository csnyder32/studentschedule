//
//  SecondViewController.swift
//  MyStudentSchedule
//
//  Created by Chris Snyder on 5/7/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var roomNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    @IBAction func onButtonPressed(sender: AnyObject)
    {
        //accesses the custom class we made that contains a function to add to the schedule array
        scheduleMGR.addClass(nameTextField.text, roomNumber: roomNumberTextField.text)
        nameTextField.text = ""
        roomNumberTextField.text = ""
        self.tabBarController?.selectedIndex = 0
    }

}

