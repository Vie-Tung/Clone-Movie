//
//  PublishBindableProtocol.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import Dispatch

protocol PublishBindableProtocol {

    associatedtype Model

    func bind(_ listener: @escaping ((Model) -> Void), on dispatchQueue: DispatchQueue?)
    func send(_ value: Model)

}

extension PublishBindableProtocol {

    func eraseToAnyBindable() -> AnyPublishBindable<Model> {
        AnyPublishBindable(self)
    }

}
