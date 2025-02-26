//
//  PublishBindable.swift
//  CloneMovie
//
//  Created by Tung Viet on 16/1/25.
//

import Dispatch

final class PublishBindable<T>: PublishBindableProtocol {
    
    typealias Listener = ((T) -> Void)
    private var listener: Listener?

    private var dispatchQueue: DispatchQueue?

    func bind(_ listener: @escaping Listener, on dispatchQueue: DispatchQueue? = nil) {
        self.listener = listener
        self.dispatchQueue = dispatchQueue
    }

    func send(_ value: T) {
        if let dispatchQueue = dispatchQueue {
            dispatchQueue.async { self.listener?(value) }
        } else {
            self.listener?(value)
        }
    }

}

extension PublishBindable where T == Void {

    func send() {
        send(())
    }

}
