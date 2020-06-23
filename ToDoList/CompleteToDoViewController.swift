//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by Alana Foreman on 6/22/20.
//  Copyright © 2020 Alana Foreman. All rights reserved.
//

import UIKit
import CoreData

class CompleteToDoViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func completeTapped(_ sender: Any) {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let theToDo = selectedToDo {
          context.delete(theToDo)
          navigationController?.popViewController(animated: true)
        }
      }
    }
    
    var previousVC = ToDoTableViewController()
    //var selectedToDo = ToDo()
    
    var selectedToDo : ToDoCD?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo?.name

        // Do any additional setup after loading the view.
        
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
