//
//  Screen.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 04.04.2022.
//

import Foundation
import SwiftUI

typealias Control = Element&IRenderable

class Screen : IRenderable {
    var root: Control? = nil
    
    func render(_ data: Any?) -> AnyView? {
        return root?.render(data)
    }
    
}

class TestScreen: Screen {
    
    override init() {
        super.init()
        let label = TextView()
       // label.title = "Label"
        
        let distance = TextView()
        distance.title =  "Distance"
        let list = ListElement(item: NavigationElement(label: label, distance: distance))
        list.data = [Data(data: "1"), Data(data: "2")]
        root = MainNavigation(root: list)
       /* let text = TextView(padding: nil, frame: Frame(height: 200, width: 300), alignment: .topLeft, background: "#ffe700ff")
        text.title = "Test"
        root = text*/
    }
}
