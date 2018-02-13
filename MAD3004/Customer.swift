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
    fileprivate var cardType: Character? // D for debit and C for credit
    
    override init(){
        super.init()
    }
    
    init(_ cardNumber: Int,_ cardExpiry: Date,_ cardCVV: Int,_ cardType: Character,_ userID: String){
        self.cardNumber = cardNumber
        self.cardExpiry = cardExpiry
        self.cardCVV = cardCVV
        self.cardType = cardType
        super.init(userID)
    }
    
    fileprivate func updateCardInfo(_ cardNumber: Int,_ cardExpiry: Date,_ cardCVV: Int,_ cardType: Character){
        self.cardNumber = cardNumber
        self.cardExpiry = cardExpiry
        self.cardCVV = cardCVV
        self.cardType = cardType
    }
    
    override init(_ userID: String){
        super.init(userID)
    }
    
}
