//
//  ShoppingCart.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class ShoppingCart: Customer{
    var cartID: String?
    var index: Int = 0
    var quantity = [Int]()
    var productList = [Product]()

    func addItemInCart(_ quantity: Int,_ productObject: Product){
        self.productList.append(productObject)
        self.quantity.append(quantity)
    }
    
    
    func updateQuantity(_ quantity: Int, productEntered: Product){
        for i in productList{
            if (i.equals(compareTo: productEntered)){
                self.quantity[index] = quantity
            }
            index = index + 1
        }
    }
    
    func viewCartDetails(){
        print("Cart ID = \(cartID)")
        print("Product = \(productList) Quantity = \(quantity)")
        
    }
    
    override init(){
        super.init()
    }
    
    init(_ cartID: String,_ userID: String){
        self.cartID = cartID
        super.init(userID)
    }
}
