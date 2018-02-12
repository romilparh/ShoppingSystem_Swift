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
    var subTotal: Float?
    var dateOrdered: Date?
    
    func calcPrice() -> Float{
        // Pseudo Code: Fetch Items and Price, Add Price of All
        return 0
    }
    
    override init(){
        super.init()
    }
    
    init(_ orderID: String,_ address: String,_ dateOrdered: Date,_ subTotal: Float,_ cartID: String,_ quantity: Int,_ productID: String,_ productPrice: Float){
        self.orderID = orderID
        self.address = address
        self.dateOrdered = dateOrdered
        super.init(cartID, quantity, productID, productPrice)
        self.subTotal = calcPrice()
    }
    
    init(_ orderID: String){
        self.orderID = orderID
        super.init()
    }
    
    func showDetails(){
        // Print All values here for all variables
    }
}
