//
//  ChatMessageTableViewCell.swift
//  Quotamin
//
//  Created by Vevek Selvam on 27/6/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit

class ChatMessageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    // MARK: Properties
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
