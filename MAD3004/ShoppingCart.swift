//
//  ShoppingCart.swift
//  MAD3004/Users/shadybond/Downloads/Final Project/Final_Project/main.swift
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

struct Item{
    var product: Product
    var quantity: Int
    
    var subTotal: Float
    {
        get
        {
            return self.product.productPrice! * Float(self.quantity)
        }
    }
}

class ShoppingCart: Customer{
    var cartID: String?
    var productCount: Int = 0
    var item = [Item]()
    
    private var index: Int = 0
    
    
    func printCartDetails()
    {
        for s in item
        {
            print(s.product.productID, s.product.productName, s.product.productPrice, s.quantity, s.subTotal)
        }
    }
    
    override init(){
        super.init()
    }
    
    init(_ cartID: String,_ userID: String){
        self.cartID = cartID
        super.init(userID)
    }
}

