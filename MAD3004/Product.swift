//
//  Product.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

public class Product{
    var productID: String?
    var productName: String?
    var productPrice: Float?
    private var productType: Character?
    
    init(){
    }
    
    init(_ productID: String,_ productName: String,_ productPrice: Float,_ productType: Character){
        self.productID = productID
        self.productName = productName
        self.productPrice = productPrice
        self.productType = productType
    }
    
    init(_ productID: String,_ productPrice: Float){
        self.productID = productID
        self.productPrice = productPrice
    }
    
    func equals(compareTo: Product) -> Bool{
        return
            self.productID == compareTo.productID &&
                self.productName == compareTo.productName &&
                self.productPrice == compareTo.productPrice
    }
    
    func showProducts(){
        print("Product ID: \(productID)")
        print("Product Name: \(productName)")
        print("Product Price: \(productPrice)")
        print("Product Type: \(productType)")
    }
}

