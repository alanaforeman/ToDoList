//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Alana Foreman on 6/22/20.
//  Copyright © 2020 Alana Foreman. All rights reserved.
//

import UIKit
import CoreData


class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
        {
        let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
        //let toDo = ToDo()
        if let titleText = titleTextField.text
        {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        
            try? context.save()
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated : true)
    }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
