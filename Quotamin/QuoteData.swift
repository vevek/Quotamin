//
//  QuoteData.swift
//  Quotamin
//
//  Created by Vevek Selvam on 7/1/16.
//  Copyright © 2016 Vevek Selvam. All rights reserved.
//

import UIKit

class QuoteData {

    // MARK: Properties
    
    var quoteID: String
    var quoteDetail: String
    var quoteAuthor: String
    
    
    // MARK: Initialization
    
    init(quoteID: String, quoteDetail: String, quoteAuthor: String){
    
        self.quoteID = quoteID
        self.quoteDetail = quoteDetail
        self.quoteAuthor = quoteAuthor
        
    }
}
