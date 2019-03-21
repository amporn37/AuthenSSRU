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
        let password = PasswordTextField.text!
        
        
        
        
        print("name = \(name)")
        print("user = \(user)")
        print("Password = \(password)")
        
        if (name.count == 0) || (user.count == 0) || (password.count == 0){
            myAlert(titleString: "Have Space", messageString: "Please Fill AII Blank")
        } else {
          uploaData(name: name, user: user, password: password)
        }
        
        
        
    } //upload Buttom
    
    func myAlert(titleString: String, messageString: String) -> Void {
        
        print("title = \(titleString), message = \(messageString)")
        let alert = UIAlertController(title: titleString, message: messageString, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert,animated: true, completion: nil)
        
        
    } // myAlert
    
    func uploaData(name: String, user : String,password : String) -> Void {
        
        let urlString: String = "https://www.androidthai.in.th/snru/addDataKENG.php?isAdd=true&Name=\(name)&User=\(user)&Password=\(password)"
        
        let url = URL(string: urlString)
        let request = NSMutableURLRequest(url: url!)
        let task = URLSession.shared.dataTask(with: request as URLRequest){data, response,error in
            
            if error != nil {
                print("Error")
                
            } else {
                
                
                if let testData = data {
                let canReadData = NSString(data: testData, encoding: String.Encoding.utf8.rawValue)
                    print("canRed ==> \(String(describing: canReadData))")
            }
                
        }  // if 1
            
        } // end Task
          task.resume()
       
            
            
        
        
        
        
        
    }
    
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        
      print("You Click Back")
        performSegue(withIdentifier: "BackMain", sender: self)
      
        
    }
    
    

} //Main Class
