//
//  Element.swift
//  ServerDrivenUI
//
//  Created by Anna Zharkova on 03.04.2022.
//

import Foundation

class Element {
    var padding: Padding? = nil
    var frame: Frame? = nil
    var alignment: AlignmentType? = nil
    var background: String = ""
    
    var elements: [Element] = [Element]()
    
    init() {}
    
    init(padding: Padding? = nil, frame: Frame? = nil, alignment: AlignmentType? = nil, background: String = "") {
        self.padding = padding
        self.frame = frame
        self.alignment = alignment
        self.background = background
    }
}

struct Padding {
    let top: Int
    let left: Int
    let bottom: Int
    let right: Int
}

struct Frame {
    let height: Int?
    let width: Int?
}

enum AlignmentType: String {
    case center = "center"
    case topLeft = "topLeft"
    case bottom = "bottom"
}

