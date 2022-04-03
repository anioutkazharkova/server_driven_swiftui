//
//  TextView.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 03.04.2022.
//

import Foundation
import SwiftUI

class TextView : Element, IRenderable {
    var title: String = ""
    var textColor: String? = nil
    var fontSize: Int = 12
    
    func render(_ data: Any?) -> AnyView? {
        let text = data as? String ?? title
        return AnyView(Text(text).font(.system(size: CGFloat(fontSize))).addModifiers(element: self))
    }
}
