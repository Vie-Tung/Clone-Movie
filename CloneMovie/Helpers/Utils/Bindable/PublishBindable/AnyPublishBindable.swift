//
//  AnyPublishBindable.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import Dispatch

final class AnyPublishBindable<T>: PublishBindableProtocol {

    typealias Model = T
    typealias Listener = ((T) -> Void)

    private let sendClosure: ((T) -> Void)
    private let bindClosure: ((@escaping Listener, DispatchQueue?) -> Void)

    init<B: PublishBindableProtocol>(_ bindable: B) where B.Model == T {
        self.sendClosure = bindable.send
        self.bindClosure = bindable.bind
    }

    func bind(_ listener: @escaping Listener, on dispatchQueue: DispatchQueue? = nil) {
        bindClosure(listener, dispatchQueue)
    }

    func send(_ value: T) {
        sendClosure(value)
    }

}

extension AnyPublishBindable where T == Void {

    func send() {
        sendClosure(())
    }

}
