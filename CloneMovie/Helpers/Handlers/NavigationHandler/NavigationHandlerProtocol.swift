//
//  NavigationHandlerProtocol.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//
import UIKit

protocol NavigationHandlerProtocol {
    
    func initialTransition(from window: UIWindow?)
    
    func handleUrlOpeningNavigation(for url: URL?, and window: UIWindow?)
    func handleShortcutItem(_ shortcutItem: UIApplicationShortcutItem, and window: UIWindow?)
}
