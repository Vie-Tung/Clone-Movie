//
//  Untitled.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import UIKit

final class SplashViewController: UIViewController, Storyboared {
    
    static var storyboardName: String = "Main"
    
    var viewModel: SplashViewModelProtocol?
    var navigationHandler: NavigationHandlerProtocol?
    
    // MARK: - Lifecycle
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // We can only get the window and scene of this view controller
        // only after it has been added to the window hierarchy
        setupBindables()
        viewModel?.startInitialDownloads()
    }
    
    // MARK: - Reactive Behavior
    
    private func setupBindables() {
        viewModel?.initialDownloadsEnded.bind { [weak self] in
            guard let self = self else { return }
            self.navigationHandler?.initialTransition(from: self.view.window)
        }
    }
    
}
