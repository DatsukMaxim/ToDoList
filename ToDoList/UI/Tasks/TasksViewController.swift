//
//  TasksViewController.swift
//  ToDoList
//
//  Created by Maxim Datsuk on 19.03.2019.
//  Copyright © 2019 Maxim Datsuk. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {
    @IBOutlet weak var taskNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Список дел"
        
        taskNameTextField.placeholder = "Название задачи"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(onAddItem)
        )
    }
    @objc func onAddItem() {
        let viewController = TaskCreatorViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        present(
            navigationController,
            animated: true,
            completion: nil
        
        )
    }
}
