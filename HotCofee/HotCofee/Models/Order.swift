//
//  Order.swift
//  HotCofee
//
//  Created by Azimjon on 15/09/22.
//

import Foundation


enum CoffeeType: String, Codable, CaseIterable{
    case cappuccino
    case latte
    case espressino
    case cartado
}

enum CoffeeSize:String, Codable, CaseIterable {
    case small
    case medium
    case large
}


struct Order: Codable {
    let name:String
    let email: String
    let type:CoffeeType
    let size: CoffeeSize
}
