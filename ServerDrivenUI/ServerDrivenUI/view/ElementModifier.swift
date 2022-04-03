//
//  ElementModifier.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 03.04.2022.
//

import Foundation
import SwiftUI

struct ElementModifier: ViewModifier {
    var data: Element?
    
    func body(content: Content) -> some View {
        if let data = data {
            content.padding(data.createInsets()).frame(width: data.frame?.width?.toFloat(), height: data.frame?.height?.toFloat(), alignment: data.addAlignment()).background(Color(UIColor(hex: data.background) ?? UIColor.white))
        }
        else {
            content
        }
    }
}

extension Int {
    func toFloat()->CGFloat {
        return CGFloat(self)
    }
}

extension Padding {
    func toInsets() -> EdgeInsets{
        return EdgeInsets(top: CGFloat(top), leading: CGFloat(left), bottom: CGFloat(bottom), trailing: CGFloat(right))
    }
}

extension Element {
    func createInsets()->EdgeInsets {
        return padding?.toInsets() ?? EdgeInsets.init()
    }
    
    func addAlignment()->Alignment {
        switch alignment {
        case .topLeft:
            return .topLeading
        case .center:
            return .center
        case .bottom:
            return .bottom
        default:
            return .leading
        }
    }
}


extension View {
    func addModifiers(element: Element) -> some View {
        modifier(ElementModifier(data: element))
    }
}

