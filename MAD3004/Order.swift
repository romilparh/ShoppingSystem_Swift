//
//  Order.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class Order: ShoppingCart{
    var orderID: String?
    var address: String?
    private var dateOrdered: Date?
    
    override init(){
        super.init()
    }
    
    init(_ orderID: String,_ address: String,_ dateOrdered: Date,_ cartID: String,_ userID: String){
        self.orderID = orderID
        self.address = address
        self.dateOrdered = dateOrdered
        super.init(cartID, userID)
    }
    
    init(_ orderID: String){
        self.orderID = orderID
        super.init()
    }
    
    func showDetails(){
        print("Order ID: \(orderID)")
        print("Address: \(address)")
        print("Date Ordered: \(dateOrdered)")
    }
}

