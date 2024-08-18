//
//  ViewController.swift
//  SnapchatClone
//
//  Created by Mark Santoro on 8/17/24.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInVC: UIViewController {
    
    
    @IBOutlet var emailText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInClicked(_ sender: Any) {
        if passwordText.text != "" && emailText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (result, error) in
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                } else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                    
                }
            }
            
        } else {
            
            self.makeAlert(title: "Error", message: "Username/Password/email?")
            
        }
        
}
        
    
    
    
    @IBAction func signUpClicked(_ sender: Any) {
        if nameText.text != "" && passwordText.text != "" && emailText.text != "" {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { ( auth, error) in
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                } else {
                    let fireStore = Firestore.firestore()
                    let userDictionary = ["email": self.emailText.text!, "username": self.nameText.text!] as [String: Any]
                    
                    fireStore.collection("UserInfo").addDocument(data: userDictionary) { (error) in
                        if error != nil {
                            // display error?
                        }
                    }
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                    
                }
            }
        
        } else {
        self.makeAlert(title: "Error", message: "Username/Password/email?")
        
    }
        
        
    }
    
    func makeAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
}

