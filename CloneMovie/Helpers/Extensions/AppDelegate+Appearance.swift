//
//  AppDelegate+Appearance.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import UIKit

extension AppDelegate {
    
    func configureGlobalAppearanceIfNeeded() {
        let navigationBarAppearance = UINavigationBarAppearance()
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = UINavigationBar.appearance().standardAppearance

        let tabBarAppearance = UITabBarAppearance()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = UITabBar.appearance().standardAppearance
    }

}
