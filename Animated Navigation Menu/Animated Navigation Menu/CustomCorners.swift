//
//  CustomCorners.swift
//  Animated Navigation Menu
//
//  Created by Nerimene on 9/5/2021.
//

import SwiftUI

struct CustomCorners: Shape {

    var corners: UIRectCorner
    var raduis: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: raduis, height: raduis))
        return Path(path.cgPath)
    }
}
