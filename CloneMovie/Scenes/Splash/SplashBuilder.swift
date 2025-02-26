//
//  SplashBuilder.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import Foundation
import UIKit

final class SplashBuilder {
    class func buildViewController() -> UIViewController {
        let viewController = SplashViewController.instantiate()
        viewController.viewModel = DIContainer.shared.resolve()
        viewController.navigationHandler = DIContainer.shared.resolve()
        
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController]
        return tabBarController
    }
}
