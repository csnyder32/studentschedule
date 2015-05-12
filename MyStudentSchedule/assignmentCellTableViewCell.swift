//
//  assignmentCellTableViewCell.swift
//  MyStudentSchedule
//
//  Created by Chris Snyder on 5/7/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import UIKit

class assignmentCellTableViewCell: UITableViewCell {

    @IBOutlet weak var assignmentNameLabel: UILabel!

    @IBOutlet weak var assignmentClassLabel: UILabel!

    @IBOutlet weak var dueDateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
