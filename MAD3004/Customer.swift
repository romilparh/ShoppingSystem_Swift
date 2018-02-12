//
//  Customer.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class Customer: User{
    fileprivate var cardNumber: Int?
    fileprivate var cardExpiry: Date?
    fileprivate var cardCVV: Int?
    
    override init(){
        super.init()
    }
    
    init(_ cardNumber: Int,_ cardExpiry: Date,_ cardCVV: Int,_ userID: String){
        self.cardNumber = cardNumber
        self.cardExpiry = cardExpiry
        self.cardCVV = cardCVV
        super.init(userID)
    }
    
    func updateProfile(){
        // Pseudo Code: Goes here
    }
    
}
