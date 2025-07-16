//
//  Advantag.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import Foundation

struct Advantag: Identifiable {
    let id = UUID().uuidString
    let text: String
    let imageName: String
    
    static let advantagseData: [Advantag] = [
        .init(text: "100+ платных стран", imageName: "Gift"),
        .init(text: "Безграничное использование", imageName: "Diamond"),
        .init(text: "Отсутствие рекламы", imageName: "Disabled")
    ]
}
