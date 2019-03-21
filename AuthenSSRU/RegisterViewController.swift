//
//  RegisterViewController.swift
//  AuthenSSRU
//
//  Created by Student15 on 20/3/2562 BE.
//  Copyright © 2562 Amporn315. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
//    My Outlet
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    //    End Outlet

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    } //Main Method
    
    
    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
        
        print("You Click Upload")
        
        let name = nameTextField.text!
        let user = userTextField.text!
        let Password = PasswordTextField.text!
        
        
        
        
        print("name = \(name)")
        print("user = \(user)")
        print("Password = \(Password)")
        
        
        
        
        
    }
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
      print("You Click Back")
        performSegue(withIdentifier: "BackMain", sender: self)
      
        
    }
    
    

} //Main Class
