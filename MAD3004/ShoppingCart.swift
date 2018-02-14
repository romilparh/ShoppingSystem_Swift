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
        print("Cart ID: \(cartID!)")
        print("*********************")
        print("Product ID","Product Name","Quantity","Unit Cost","Sub Total", separator:"\t\t\t\t")
        for s in item
        {
            //print("Product ID: \(s.product.productID!) Product Name: \(s.product.productName!) Product Quantity: \(s.quantity) Total Cost: \(s.subTotal)")
            print(s.product.productID!, s.product.productName!, s.product.productPrice!.currency(), s.quantity.unit(), s.subTotal.currency(),separator:"\t\t\t\t")
        }
        print("****************************************************************************************")
    }
    
    override init(){
        super.init()
    }
    
    init(_ cartID: String,_ userID: String){
        self.cartID = cartID
        super.init(userID)
    }
}
