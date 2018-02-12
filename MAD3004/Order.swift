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
    
    fileprivate var subTotal: Float?
    fileprivate var dateOrdered: Date?
    
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
    
    init(_ orderID: String,_ address: String){
        self.orderID = orderID
        self.address = address
        super.init()
    }
    
    func showDetails(){
        print("Order ID: \(orderID)")
        print("Address: \(address)")
        print("Date Ordered: \(dateOrdered)")
        print("ProductID: \(productID)")
        print("Quantity: \(quantity)")
        print("Price: \(productPrice)")
        print("SubTotal: \(subTotal)")
    }
}
