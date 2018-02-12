//
//  ShoppingCart.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class ShoppingCart: Product{
    var cartID: String?
    var quantity: Int?

    func addItemInCart(){
        // Pseudo Code: ProductID + Quantity
    }
    
    func updateQuantity(){
        // Pseudo Code: Cart ID+ProductID
    }
    
    func viewCartDetails(){
        // Pseudo Code: Cart ID + Product ID + Product Name + Quantity for All Product IDs in Cart IDs
    }
    
    override init(){
        super.init()
    }
    
    init(_ cartID: String,_ quantity: Int,_ productID: String,_ productPrice: Float){
        self.cartID = cartID
        self.quantity = quantity
        super.init(productID, productPrice)
    }
}
