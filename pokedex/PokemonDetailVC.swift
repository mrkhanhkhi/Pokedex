//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Nguyen Duy Khanh on 2/24/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    var pokemon:Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name
    }
    

}
