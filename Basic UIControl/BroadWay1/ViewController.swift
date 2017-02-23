//
//  ViewController.swift
//  BroadWay1
//
//  Created by Rowin Shahi on 2/22/17.
//  Copyright © 2017 Rowin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var textView: UITextView!
  
  @IBOutlet weak var segmentController: UISegmentedControl!
  // MARK: Outlets
  @IBOutlet weak var firstTextField: UITextField!{
    didSet{
      firstTextField.delegate = self
    }
  }
  
  @IBOutlet weak var secondTextField: UITextField!{
    didSet{
      secondTextField.delegate = self
    }
  }
  
  
  @IBOutlet weak var button: UIButton!
  
  @IBOutlet weak var segmentControl: UISegmentedControl!
  
  @IBOutlet weak var switchControl: UISwitch!
  @IBOutlet weak var stepperControl: UIStepper!
  
  // MARK: Properties
  
  
  
   // MARK: IBAction Handler
  @IBAction func didTapButton(_ sender: Any) {
    print("Button Tapped")
  }
  
  
  @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
    switch sender.selectedSegmentIndex {
    case 0:
       print("First Item Selected")
    default:
      print("Other Item Selected")
    }
  }
  
 
  @IBAction func didChangeSwitch(_ sender: UISwitch) {
    if sender.isOn {
      print("On State")
    }else {
      print("Off State")
    }
  }
  
  
  @IBAction func didChangeStepper(_ sender: UIStepper) {
    print(sender.value)
  }
  
  
  
}

// MARK: - View LifeCycle
extension ViewController {
 
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
    segmentControl.selectedSegmentIndex = 2
    segmentControl.isHidden = true
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("viewDidAppear")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("viewDidDisappear")
  }
}

// MARK: - UITextfieldDelegate
extension ViewController: UITextFieldDelegate {
  func textFieldDidBeginEditing(_ textField: UITextField) {
    switch textField {
    case firstTextField:
      print("firstTextField")
    case secondTextField:
      print("firstTextField")
    default:
      print("NonField")
    }
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    print("textFieldDidEndEditing")
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    print("KeyBoard Removed")
    return true
  }
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    let totalCharacter = textField.text! + string
    
    if totalCharacter.characters.count > 5{
      return false
    }
    
    return true
  }
}


// MARK: TextViewDelegate
extension ViewController: UITextViewDelegate {
  
}

