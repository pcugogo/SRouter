//
//  Router.swift
//  Router
//
//  Created by ChanWook Park on 2021/01/17.
//

import UIKit

public typealias SRouter<Root> = BaseRouter<Root> & Routable & RouterType

public protocol RouterType: class {
    func navigate(to route: Route)
}

public protocol Routable: class {
    associatedtype Dependency
    func start(with dependency: Dependency)
}

open class BaseRouter<Root> {
    public let root: Root
    
    public init(root: Root) {
        self.root = root
    }
}
