//
//  SettingsVC.swift
//  SnapchatClone
//
//  Created by Mark Santoro on 8/17/24.
//

import UIKit
import Firebase
import FirebaseAuth

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSignInVC", sender: nil)
            
        } catch {
            
            
        }
        
        
        
    }
    

}
