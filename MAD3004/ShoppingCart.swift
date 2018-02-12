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
    var productList = [Product]()

    func addItemInCart(_ productObject: Product){
        self.productList.append(productObject)
    }
    
    func updateQuantity(_ quantity: Int){
        self.quantity = quantity
    }
    
    func viewCartDetails(){
        // Pseudo Code: Cart ID + Product ID + Product Name + Quantity for All Product IDs in Cart IDs
        print("Cart ID = \(cartID)")
        print("ProductID = \(productID)")
        print("Product Price = \(productPrice)")
        print("Quantity = \(quantity)")
        
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
