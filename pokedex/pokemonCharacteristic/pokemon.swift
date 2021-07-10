//
//  pokemon.swift
//  pokedex
//
//  Created by Daniel Washington Ignacio on 09/07/21.
//

import Foundation



class pokemon {
    
    var name: String?
    var number: Int?
    var info: String?
    var heigth: Float?
    var weigth: Float?
    var category: String?
    var habilities: String?
    var gender: [String]?
    var type: [String]?
    var weakness: [String]?
    var evolution: [String]?
    var avatar: String?
    var color: String?
    var green: Float?
    var red: Float?
    var blue: Float?
    var detailGreen: Float?
    var detailRed: Float?
    var detailBlue: Float?
    

    init(name: String?,number: Int?,info: String?,heigth: Float?,weigth: Float?,category: String?,habilities: String?,gender: [String]?,type: [String]?,weakness: [String]?,evolution: [String]?, avatar: String?,color: String?,green: Float?,red: Float?,blue: Float?,detailGreen: Float?,detailRed: Float?,detailBlue: Float?) {
        
        self.name = name
        self.number = number
        self.info = info
        self.heigth = heigth
        self.weigth = weigth
        self.category = category
        self.habilities = habilities
        self.gender = gender
        self.type = type
        self.weakness = weakness
        self.evolution = evolution
        self.avatar = avatar
        self.color = color
        self.green = green
        self.red = red
        self.blue = blue
        self.detailGreen = detailGreen
        self.detailRed = detailRed
        self.detailBlue = detailBlue
        
        
    }
    
}
