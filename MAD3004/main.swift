//
//  main.swift
//  MAD3004
//
//  Created by Romil Parhwal on 2018-02-12.
//  Copyright © 2018 ShadyBond. All rights reserved.
//

import Foundation

// Product Objects
var productOne: Product = Product ("1", "Trimmer", 32.4, "E")

var productTwo: Product = Product("2", "Heater", 130.5, "E")

var productThree: Product = Product("3", "Olay Extra Moisturising Shampoo", 9.34, "C")

var productFour: Product = Product("4", "Olay Conditioner", 5.44, "C")

// User Objects
var userOne: User = User("1", "Romil", "Brampton", "Admin123", "romilparhwal007@gmail.com", 53432)

var userTwo: User = User("2", "Gagandeep Brar", "Brampton", "Admin987", "gaganbrar0808@gmail.com", 53425)

var userThree: User = User("3", "Jagdeep Singh", "Toronto", "Jagdeep123", "jagdeepsingh@gmail.com", 848382)

// Administrator Objects
var administratorOne: Administrator = Administrator(432314253, "1")

// Shopping Cart Objects
var shoppingCartOne: ShoppingCart = ShoppingCart("1", "2")

var shoppingCartTwo: ShoppingCart = ShoppingCart("2", "3")

// Order Objects
var orderOne: Order = Order("1", "Brampton", Date(), "1", "2")

var orderTwo: Order = Order("2", "Toronto", Date(), "2", "3")

// ShipmentInfo Objects

var shipmentInfoOne: ShipmentInfo = ShipmentInfo("1", "C", 13.43, "1")

var shipmentInfoTwo: ShipmentInfo = ShipmentInfo("2", "C", 11.23, "2")

// Shopping Cart Function Calls

shoppingCartOne.item.append(Item(product: productThree, quantity: 3))
shoppingCartOne.item.append(Item(product: productThree, quantity: 3))
shoppingCartOne.item.append(Item(product: productThree, quantity: 3))
shoppingCartOne.printCartDetails()

