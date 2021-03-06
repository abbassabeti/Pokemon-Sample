//
//  UIView.swift
//  SamplePokemon
//
//  Created by Abbas on 3/6/21.
//

import UIKit

extension UIView {
    var topConstraint : NSLayoutConstraint? {
        return self.constraints.first(where: {$0.firstAnchor == self.topAnchor || $0.secondAnchor == self.topAnchor})
    }
    
    var bottomConstraint : NSLayoutConstraint? {
        return self.constraints.first(where: {$0.firstAnchor == self.bottomAnchor || $0.secondAnchor == self.bottomAnchor})
    }
    
    var leadingConstraint : NSLayoutConstraint? {
        return self.constraints.first(where: {$0.firstAnchor == self.leadingAnchor || $0.secondAnchor == self.leadingAnchor})
    }
    
    var trailingConstraint : NSLayoutConstraint? {
        return self.constraints.first(where: {$0.firstAnchor == self.trailingAnchor || $0.secondAnchor == self.trailingAnchor})
    }
}
