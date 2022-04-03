//
//  List.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 03.04.2022.
//

import Foundation
import SwiftUI

struct Data: Identifiable {
    let data: Any
    let id = UUID().uuidString
}

class ListElement: Element {
    var data: [Data] = [Data]()
    var item: NavigationElement? = nil
    
    convenience init(item: NavigationElement) {
        self.init()
        self.item = item
    }
}

extension ListElement : IRenderable {
    func render(_ data: Any?) -> AnyView? {
        guard let item = item, let label = item.label, let distance = item.distance else {
            return nil
        }
        return AnyView(List(self.data) { element in
            NavigationLink {
                distance.render(element.data)
            } label: {
                label.render(element.data)
            }
        })
    }
}
