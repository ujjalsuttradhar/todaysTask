//
//  SecondViewController.swift
//  todaysTask
//
//  Created by Ujjal Suttra Dhar on 6/14/15.
//  Copyright (c) 2015 UJJAL SUTTRA DHAR. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var taskName: UITextField!
    @IBOutlet var taskDesc: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskManager.addTask(taskName.text, desc: taskDesc.text)
        self.view.endEditing(true)
        taskName.text = ""
        taskDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    // iOS Touches
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    // UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

