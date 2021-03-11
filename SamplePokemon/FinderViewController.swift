//
//  FinderViewController.swift
//  SamplePokemon
//
//  Created by Abbas on 3/6/21.
//

import UIKit
import PokemonSDK

class FinderViewController : UIViewController {
    
    var finderView : PokemonFinderView?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.view.topConstraint?.constant = topbarHeight
    }
    
    func setupView(){
        let finderView = PokemonFinderView()
        self.finderView = finderView
        
        self.view.backgroundColor = .white
        
        finderView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(finderView)
        
        NSLayoutConstraint.activate([
            finderView.topAnchor.constraint(equalTo: self.view.topAnchor),
            finderView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            finderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            finderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }
    
    func provideNavigationController(frame: CGRect) -> UINavigationController? {
        let nvc = UINavigationController(rootViewController: self)
        nvc.view.frame = frame
        self.title = "Pokemon Search"
        
        let btn = UIBarButtonItem(title: "Favorites", style: .plain, target: self, action: #selector(goToFavorite))
        btn.accessibilityIdentifier = "favorites_navigation_button"
        navigationItem.rightBarButtonItem = btn

        return nvc
    }
    
    @objc func goToFavorite(){
        let vc = FavoritePokemonViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
