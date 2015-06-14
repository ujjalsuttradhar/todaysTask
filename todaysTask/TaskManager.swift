//
//  TaskManager.swift
//  todaysTask
//
//  Created by Ujjal Suttra Dhar on 6/14/15.
//  Copyright (c) 2015 UJJAL SUTTRA DHAR. All rights reserved.
//

import UIKit

var taskManager : TaskManager = TaskManager();

struct task{
    var name = "No-Name"
    var desc = "No-Desc"
}

class TaskManager: NSObject {
   
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc));
    }
    
    func deleteTask(index: Int){
        tasks.removeAtIndex(index)
    }

}
