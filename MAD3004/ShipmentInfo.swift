//
//  ShipmentInfo.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class ShipmentInfo: Order{
    var shippingID: String?
    var shippingType: Character?    // P for personal, C for commercial
    var shippingCost: Float?
    var shippingStatus: Character?  // P for Processing, S for in-transit Shipping
    
    override init(){
        super.init()
    }
    
    init(_ shippingID: String,_ shippingType: Character,_ shippingCost: Float,_ orderID: String){
        self.shippingID = shippingID
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingStatus = "P"
        super.init(orderID)
    }
    
    func showShippingStatus(){
        print("********************")
        print("Order ID: \(orderID!)")
        print("Shipping ID: \(shippingID!)")
        print("Shipping Type: \(shippingType!)")
        print("Shipping Cost: \(shippingCost!)")
        print("Shipping Status: \(shippingStatus!)")
        print("********************")
    }
    
    func updateShippingInfo(_ status: Character){
        self.shippingStatus = status
    }
}

