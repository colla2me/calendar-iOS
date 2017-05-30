//
//  NewPatientTableVC.swift
//  Appt
//
//  Created by Agustin Mendoza Romo on 5/23/17.
//  Copyright © 2017 AgustinMendoza. All rights reserved.
//

import UIKit
import CoreData

class NewPatientTableVC: UITableViewController {
  
//  var managedObjectContext: NSManagedObjectContext!
  
  // --------        -----------  FetchControlller
  var managedObjectContext: NSManagedObjectContext?
  // --------        -----------  FetchControlller

  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var mobilePhoneTextField: UITextField!
  @IBOutlet weak var homePhoneTextField: UITextField!
  @IBOutlet weak var patientEmailTextField: UITextField!
  
  @IBAction func cancel(_ sender: UIBarButtonItem) {
    dismiss(animated: true)
//    _ = navigationController?.popViewController(animated: true)
  }
  @IBAction func saveButton(_ sender: UIBarButtonItem) {
    dismiss(animated: true)
    savePatient()
  }
  

  
  override func viewDidLoad() {
        super.viewDidLoad()

    }
  
  func savePatient() {
    guard let managedObjectContext = managedObjectContext else { return }
    
    let patient = Patient(context: managedObjectContext)
    
    patient.name = nameTextField.text
    patient.lastName = lastNameTextField.text
    if let mobilePhone = Int16(mobilePhoneTextField.text!), let homePhone = Int16(homePhoneTextField.text!) {
      patient.mobilePhone = mobilePhone
      patient.homePhone = homePhone
    }
    patient.email = patientEmailTextField.text
    
    //    _ = navigationController?.popViewController(animated: true)
  }


}
