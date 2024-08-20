//
//  FeedCell.swift
//  SnapchatClone
//
//  Created by Mark Santoro on 8/19/24.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet var feedImageView: UIImageView!
 
    @IBOutlet var feedUserNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
