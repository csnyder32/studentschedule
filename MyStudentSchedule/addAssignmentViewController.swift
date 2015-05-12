//
//  addAssignmentViewController.swift
//  MyStudentSchedule
//
//  Created by Chris Snyder on 5/7/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class addAssignmentViewController: UIViewController {


    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var classTextField: UITextField!

    @IBOutlet weak var dueDateTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addButton(sender: AnyObject)
    {
        assignmentMGR.addAssignments(nameTextField.text, assignmentClass: classTextField.text, dueDate: dueDateTextField.text)

        
    }

}
