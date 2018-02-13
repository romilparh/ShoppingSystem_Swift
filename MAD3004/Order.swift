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
    var itemCount: Int?
    private var dateOrdered: Date?
    
    override init(){
        super.init()
    }
    
    init(_ orderID: String,_ address: String,_ dateOrdered: Date,_ cartID: String,_ userID: String,_ itemCount: Int){
        self.orderID = orderID
        self.address = address
        self.dateOrdered = dateOrdered
        super.init(cartID, userID)
        self.itemCount = super.countProductQuantity()
    }
    
    override init(_ orderID: String,_ address: String){
        self.orderID = orderID
        self.address = address
        super.init()
    }
    
    func showDetails(){
        print("Order ID: \(orderID)")
        print("Address: \(address)")
        print("Date Ordered: \(dateOrdered)")
        print("Item Count: \(itemCount)")
    }
}
