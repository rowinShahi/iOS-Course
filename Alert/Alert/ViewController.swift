//
//  ViewController.swift
//  Alert
//
//  Created by Rowin Shahi on 3/2/17.
//  Copyright © 2017 Rowin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  @IBAction func didTapAlertView(_ sender: Any) {
    
    let alertController: UIAlertController = UIAlertController(title: "Title", message: "Want to Delete?", preferredStyle: .alert)
    
    let okAction:UIAlertAction = UIAlertAction(title: "Done", style: .destructive) { (action) in
      print("OK button Pressed")
    }
    
    let cancleAction:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
      print("Cancel button Pressed")
    }
    
    alertController.addTextField { (textField) in
      textField.placeholder = "Enter User Name"
    }
    
    alertController.addTextField { (textField) in
      textField.placeholder = "Enter Password"
    }
    
    alertController.addAction(okAction)
    alertController.addAction(cancleAction)
    
    present(alertController, animated: true, completion: nil)
  }
  
  
  
  @IBAction func didTapActionSheet(_ sender: Any) {
    
    let alertController:UIAlertController = UIAlertController(title: "Select", message: nil, preferredStyle: .actionSheet)
    
    let option2: UIAlertAction = UIAlertAction(title: "Option Two", style: .default) { (action) in
  
    }
    
    let option3: UIAlertAction = UIAlertAction(title: "Option Three", style: .default) { (action) in
    }
    let option4: UIAlertAction = UIAlertAction(title: "Option Four", style: .default) { (action) in
    }
    let option5: UIAlertAction = UIAlertAction(title: "Option Five", style: .default) { (action) in
    }
    let option6: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    
    let option7: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    let option8: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    let option9: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    let option10: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    let option11: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    let option12: UIAlertAction = UIAlertAction(title: "Option Six", style: .default) { (action) in
    }
    
    let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
    }
    
    let cancelAction2: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
    }
    
    
    //alertController.addAction(option1)
    alertController.addAction(option2)
    alertController.addAction(option3)
    alertController.addAction(option4)
    alertController.addAction(option5)
    alertController.addAction(option6)
    alertController.addAction(option7)
    alertController.addAction(option8)
    alertController.addAction(option9)
    alertController.addAction(option11)
    alertController.addAction(option12)
    alertController.addAction(option12)
    alertController.addAction(option12)
    alertController.addAction(option12)
    alertController.addAction(cancelAction)
    //alertController.addAction(cancelAction2)
    
    
    
    present(alertController, animated: true, completion: nil)
  }
  
  
  
  
  
  
}

