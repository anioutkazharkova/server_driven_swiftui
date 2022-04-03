//
//  NavigationElement.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 03.04.2022.
//

import Foundation
import SwiftUI


class NavigationElement: Element {
    var label: Control? = nil
    var distance: Control? = nil
    
    override init() {
        super.init()
    }
    
    convenience init(label: Control, distance: Control) {
        self.init()
        self.label = label
        self.distance = distance
    }
}

class MainNavigation: Element {
    var root: Control? = nil
    
    override init() {
        super.init()
    }
    
    convenience init(root: Control) {
        self.init()
        self.root = root
    }
}
extension MainNavigation:  IRenderable {
    func render(_ data: Any?) -> AnyView? {
        return AnyView(NavigationView{
            root?.render(data)
        })
    }
}
