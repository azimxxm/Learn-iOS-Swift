//
//  AddCoffeeOrserViewModel.swift
//  HotCofee
//
//  Created by Azimjon on 16/09/22.
//

import Foundation


struct AddCoffeeOrderViewModel {
    var name: String?
    var email:String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }
}
