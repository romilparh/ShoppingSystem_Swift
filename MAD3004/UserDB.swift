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
    var phoneNumber:Int?
    
    private var password: String?
    private var address: String?
    private var loginStatus: Bool?
    private var eMail: String?
    
    init(){
    }
    
    init(_ userID: String,_ name: String,_ address: String,_ password: String,_ eMail: String,_ phoneNumber: Int){
        if(isValidEmail(eMail)){
            self.userID = userID
            self.name = name
            self.address = address
            self.password = password
            self.eMail = eMail
            self.phoneNumber = phoneNumber
        } else{
            print("Not Valid Input")
        }
    }
    
    init(_ userID: String){
        self.userID = userID
    }
    
    func verifyLogin(_ userID: String,_ password: String) -> Bool{
        return
            self.userID == userID &&
                self.password == password
    }
    
    func isValidEmail(_ testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    func showUserDetails(){
        print("Name: \(name)")
        print("eMail: \(eMail)")
        print("Address: \(address)")
    }
    
    private func updatePasswordDetails(_ password: String){
        self.password = password
    }
    
    private func updateAddressDetails(_ address: String){
        self.address = address
    }
}

