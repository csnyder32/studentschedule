//
//  ScheduleManager.swift
//  MyStudentSchedule
//
//  Created by Chris Snyder on 5/7/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

//global instance of the Schedule Manager class
var scheduleMGR : ScheduleManager = ScheduleManager()

struct myClass {
    var subject = "un-named"
    var roomNumber = "un-titled"
}

class ScheduleManager: NSObject {

    //subjects is array of myClass struct items
    var subjects = [myClass]()

    //this adds to the subjects array
    func addClass(subject: String, roomNumber: String) {
        subjects.append(myClass(subject: subject , roomNumber: roomNumber))
    }
   
}
