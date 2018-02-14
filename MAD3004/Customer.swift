//
//  Customer.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class Customer: User{
    private var cardNumber: Int?
    private var cardExpiry: Date?
    private var cardCVV: Int?
    private var cardType: Character? // D for debit and C for credit
    
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
    
    func updateCardInfo(_ cardNumber: Int,_ cardExpiry: Date,_ cardCVV: Int,_ cardType: Character){
        self.cardNumber = cardNumber
        self.cardExpiry = cardExpiry
        self.cardCVV = cardCVV
        self.cardType = cardType
        print("Card Details Updated for User: \(userID!)")
    }
    
    override init(_ userID: String){
        super.init(userID)
    }
    
    func showCustomerDetails(){
        print("*********************")
        print("User ID: \(userID!)")
        print("*********************")
    }
}

