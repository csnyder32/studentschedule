//
//  assignmentViewController.swift
//  MyStudentSchedule
//
//  Created by Chris Snyder on 5/7/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class assignmentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var assignmentTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //reloads teh table view after we come back from the addAssignmentViewController
    override func viewWillAppear(animated: Bool) {
        assignmentTableView.reloadData()
    }

    //table view methods

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assignmentMGR.assignments.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! assignmentCellTableViewCell

        //formats the cell with the labels from assignmentCellTableViewCell
        cell.assignmentNameLabel?.text = assignmentMGR.assignments[indexPath.row].assignmentName
        cell.assignmentClassLabel?.text = assignmentMGR.assignments[indexPath.row].assignmentClass
        cell.dueDateLabel?.text = assignmentMGR.assignments[indexPath.row].dueDate

        return cell
        
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        assignmentMGR.assignments.removeAtIndex(indexPath.row)
        assignmentTableView.reloadData()
    }

    //unwind segue to get back from assignment entry screen to assignment list
    @IBAction func unwindAction (segue: UIStoryboardSegue ) {

    }

}
