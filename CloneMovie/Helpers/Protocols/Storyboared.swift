//
//  Storyboared.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import UIKit

protocol Storyboared {
    
    static var storyboardName: String { get }
    static func instantiate() -> Self
}

extension Storyboared where Self: UIViewController {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
        
    }
}
