//
//  ShoppingCart.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class ShoppingCart{
    var cartID: String?
    var quantity: Int?
    var productList = [Product]()

    func addItemInCart(_ productObject: Product){
        self.productList.append(productObject)
    }
    
    func updateQuantity(_ quantity: Int){
        self.quantity = quantity
    }
    
    func viewCartDetails(){
        print("Cart ID = \(cartID)")
        print("Product Price = \(productPrice)")
        print("Quantity = \(quantity)")
        
    }
    
    init(){
    }
    
    init(_ cartID: String,_ quantity: Int){
        self.cartID = cartID
        self.quantity = quantity
    }
}
