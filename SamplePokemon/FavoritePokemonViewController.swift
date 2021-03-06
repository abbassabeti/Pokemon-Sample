//
//  FavoritePokemonView.swift
//  SamplePokemon
//
//  Created by Abbas on 3/6/21.
//

import UIKit
import PokemonSDK

class FavoritePokemonViewController : UIViewController
{
    var favoriteView : FavoritePokemonView?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard let frame = self.view.window?.frame else {return}
        self.view.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
    
    func setupView(){
        let favoriteView = FavoritePokemonView()
        self.favoriteView = favoriteView
        
        favoriteView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(favoriteView)
        
        self.view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            favoriteView.topAnchor.constraint(equalTo: self.view.topAnchor),
            favoriteView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            favoriteView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            favoriteView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }
}
