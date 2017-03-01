//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Nguyen Duy Khanh on 2/24/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    
    @IBOutlet weak var defenseLbl: UILabel!
    
    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var pokedexLbl: UILabel!
    
    @IBOutlet weak var baseAttackLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    
    @IBOutlet weak var currentEvoImg: UIImageView!
    
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    @IBOutlet weak var evoLbl: UILabel!
    
    var pokemon:Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name
        let img = UIImage(named:"\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        pokemon.downloadPokemonDetails {
            self.updateUI()
            //called after download is done
        }
    }
    
    func updateUI() {
        descriptionLbl.text = pokemon.description
        typeLbl.text = pokemon.type
        defenseLbl.text = pokemon.defense
        baseAttackLbl.text = pokemon.attack
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        pokedexLbl.text = "\(pokemon.pokedexId)"
        if pokemon.nextEvolutionId == "" {
            evoLbl.text = "No Evolutions"
            nextEvoImg.hidden = true
        } else {
            nextEvoImg.hidden = false
            nextEvoImg.image = UIImage(named: "\(pokemon.nextEvolutionId)")
            var str = "Next Evolution: \(pokemon.nextEvolutionTxt)"
            if pokemon.nextEvolutionLvl != "" {
                str += "- LVL \(pokemon.nextEvolutionLvl)"
            }
        }
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
