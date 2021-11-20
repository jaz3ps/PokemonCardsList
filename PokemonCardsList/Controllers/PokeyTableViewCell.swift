//
//  PokeyTableViewCell.swift
//  PokemonCardsList
//
//  Created by jazeps.ivulis on 19/11/2021.
//

import UIKit
import SDWebImage

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    @IBOutlet weak var subtypeLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    
    func setupUI(withDataFrom: Pokemon){
        nameLabel.text = "Name: " + withDataFrom.name
        hpLabel.text = "Card value: " + withDataFrom.number
        
        self.pokeyImageView.sd_setImage(with: URL(string: withDataFrom.image), placeholderImage: UIImage(systemName: "applelogo"))
        
        if let subtype = withDataFrom.subtype {
            subtypeLabel.text = "Card: " + subtype
        }
        
        if let supertype = withDataFrom.supertype {
            
            supertypeLabel.text = "Type: " + supertype
            
            if withDataFrom.supertype == "Trainer" {
                contentView.backgroundColor = .cyan
            }else{
                contentView.backgroundColor = .systemGray6
            }
        }
    }
}
