//
//  Pokemon.swift
//  pokedex
//
//  Created by Nguyen Duy Khanh on 2/23/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import Foundation
class Pokemon {
    private var _name:String!
    private var _pokedexID:Int!
    
    var name:String {
        return _name
    }
    
    var pokedexID:Int {
        return _pokedexID
    }
    
    init(name:String, pokedexID:Int){
        self._name = name
        self._pokedexID = pokedexID
    }
}
