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
    
    init(_ shippingID: String,_ shippingType: Character,_ shippingCost: Float,_ shippingStatus: Character,_ orderID: String,_ address: String){
        self.shippingID = shippingID
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingStatus = shippingStatus
        super.init(orderID, address)
    }
    
    func showShippingStatus(){
        // Pseudo Code: Write a function to display status
    }
    
    func updateShippingInfo(){
        // Pseudo code: Update status
    }
}
