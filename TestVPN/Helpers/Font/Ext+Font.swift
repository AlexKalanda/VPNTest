//
//  Ext+Font.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

enum GeistType: String {
    case regular = "Geist-Regular"
    case thin = "Geist-Thin"
    case extraLight = "Geist-ExtraLight"
    case light = "Geist-Light"
    case medium = "Geist-Medium"
    case semiBold = "Geist-SemiBold"
    case bold = "Geist-Bold"
    case extraBold = "Geist-ExtraBold"
    case black = "Geist-Black"
}

extension Font {
    static func geist(_ type: GeistType, size: CGFloat) -> Font {
        return .custom(type.rawValue, size: size)
    }
}

struct GeistFont: ViewModifier {
    let type: GeistType
    let size: CGFloat
    
    func body(content: Content) -> some View {
        content.font(.geist(type, size: size))
    }
}

extension View {
    func geistFont(_ type: GeistType, size: CGFloat) -> some View {
        self.modifier(GeistFont(type: type, size: size))
    }
}

//"Geist-Regular", "Geist-Thin", "Geist-ExtraLight", "Geist-Light", "Geist-Medium", "Geist-SemiBold", "Geist-Bold", "Geist-ExtraBold", "Geist-Black"
