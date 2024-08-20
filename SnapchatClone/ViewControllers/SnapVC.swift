//
//  SnapVC.swift
//  SnapchatClone
//
//  Created by Mark Santoro on 8/17/24.
//

import UIKit

class SnapVC: UIViewController {

    @IBOutlet var timeLabel: UILabel!
   
    var selectedSnap : Snap?
    var selectedTime : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let time = selectedTime{
            timeLabel.text = "Time Left : \(time)"
        }
        
    }
    

    

}
