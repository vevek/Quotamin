//
//  QuoteTableViewCell.swift
//  Quotamin
//
//  Created by Vevek Selvam on 7/1/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {

    // MARK: Properties
    
    @IBOutlet weak var quoteDetailLabel: UILabel!
    @IBOutlet weak var quoteIDLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
