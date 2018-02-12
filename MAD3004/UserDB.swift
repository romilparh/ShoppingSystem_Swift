//
//  UserDB.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

class User{
    var userID: String?
    var name: String?
    fileprivate var address: String?
    fileprivate var password: String?
    fileprivate var loginStatus: Bool?
    fileprivate var eMail: String?
    
    init(){
    }
    
    init(_ userID: String,_ name: String,_ address: String,_ password: String,_ eMail: String){
        self.userID = userID
        self.name = name
        self.address = address
        self.password = password
        self.eMail = eMail
        self.loginStatus = verifyLogin()
    }
    
    init(_ userID: String){
        self.userID = userID
    }
    
    fileprivate func verifyLogin() -> Bool{
        return true
    }
    
    func showUserDetails(){
        print("Name: \(name)")
        print("eMail: \(eMail)")
        print("Address: \(address)")
    }
    
    fileprivate func updatePasswordDetails(_ password: String){
        self.password = password
    }
    
    fileprivate func updateAddressDetails(_ address: String){
        self.address = address
    }
}

