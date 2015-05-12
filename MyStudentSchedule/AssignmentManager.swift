//
//  AssignmentManager.swift
//  MyStudentSchedule
//
//  Created by Chris Snyder on 5/7/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

var assignmentMGR : AssignmentManager = AssignmentManager()

struct assignment {
    var assignmentName = "un-named"
    var assignmentClass = "un-named"
    var dueDate = "un-dated"
}

class AssignmentManager: NSObject
{
    var assignments = [assignment]()

    func addAssignments(assignmentName: String, assignmentClass: String, dueDate: String) {
        //this adds to the assignments array by passing the assignment struct in the function
        assignments.append(assignment(assignmentName: assignmentName, assignmentClass: assignmentClass, dueDate: dueDate))
    }
   
}
