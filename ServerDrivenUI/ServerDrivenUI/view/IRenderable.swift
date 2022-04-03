//
//  IRenderable.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 03.04.2022.
//

import Foundation
import SwiftUI

protocol IRenderable : AnyObject {
    func render(_ data: Any?)->AnyView?
}


extension View {
    func toAny() -> AnyView {
        return AnyView(self)
    }
}
