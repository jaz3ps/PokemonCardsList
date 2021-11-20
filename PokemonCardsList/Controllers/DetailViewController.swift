//
//  DetailViewController.swift
//  PokemonCardsList
//
//  Created by jazeps.ivulis on 20/11/2021.
//

import UIKit


class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pokey = pokemon{
            self.imageView.sd_setImage(with: URL(string: pokey.image), placeholderImage: UIImage(systemName: "applelogo"))
        }
        
    }
    

    

}
