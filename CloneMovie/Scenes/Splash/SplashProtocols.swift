//
//  SplashProtocols.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

protocol SplashViewModelProtocol {

    var initialDownloadsEnded: PublishBindable<Void> { get }

    func startInitialDownloads()

}

protocol SplashInteractorProtocol {
    
}
