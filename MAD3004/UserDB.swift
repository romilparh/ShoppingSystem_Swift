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
    
    fileprivate var address: String?
    fileprivate var password: String?
    fileprivate var loginStatus: Bool?
    fileprivate var eMail: String?
    
    init(){
        
    }
    
    init(_ userID: String,_ address: String,_ password: String,_ eMail: String){
        self.userID = userID
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
}

