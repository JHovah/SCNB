//
//  EditExperienceController.swift
//  Peek Beta
//
//  Created by Jacorey Brown on 5/12/19.
//  Copyright © 2019 Jacorey Brown. All rights reserved.
//

import UIKit
import Eureka
import SplitRow

class EditExperienceController : FormViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(white: 0.9, alpha: 1)
        navigationItem.title = "Edit Work Experience"
        
        
        
        form +++
            
            Section()
            <<< TextRow() { row in
                row.placeholder = "Job Title"
                }.cellSetup({ (cell, _) in
                })
            
            <<< TextRow() { row in
                row.placeholder = "Company Name"
                }.cellUpdate({ (cell, row) in
                })
            
            <<< SplitRow<DateRow, DateRow>() {row in
                row.rowLeft = DateRow()
                row.rowLeftPercentage = 0.5
                
                row.rowLeft?.noValueDisplayText = "Start Date"
                
                row.rowRight = DateRow()
                row.rowRight?.noValueDisplayText = "End Date"
                
            }
            
            <<< PickerInlineRow<Date>("PickerInlineRow") { (row : PickerInlineRow<Date>) -> Void in
                row.title = row.tag
                row.displayValueFor = { (rowValue: Date?) in
                    return rowValue.map { "Year \(Calendar.current.component(.year, from: $0))" }
                }
                row.options = []
                var date = Date()
                for _ in 1...10{
                    row.options.append(date)
                    date = date.addingTimeInterval(60*60*24*365)
                }
                row.value = row.options[0]
                
        }
        
    }
}

