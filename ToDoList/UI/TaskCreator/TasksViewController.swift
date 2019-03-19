//
//  TasksViewController.swift
//  ToDoList
//
//  Created by Maxim Datsuk on 19.03.2019.
//  Copyright © 2019 Maxim Datsuk. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Создание дела"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .cancel,
            target: self,
            action: #selector(onCancelButton)
        )
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(onDoneButton)
        )    }
}

@objc func onCancelButton(){
    dismiss(
        animated: true,
        completion: nil
    )
}

@obdj func onDoneButton(){
    print("Done button pressed")
}
