//
//  Plan.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import Foundation

struct Plan: Identifiable {
    enum Period: String {
        case week = "Неделя"
        case month = "Месяц"
        case year = "Год"
    }
    
    let id = UUID()
    let period: Period
    let price: Int
    let discount: String?
    
    static let planData: [Plan] = [
        .init(period: .week, price: 299, discount: nil),
        .init(period: .month, price: 699, discount: nil),
        .init(period: .year, price: 999, discount: "35% SALE")
    ]
}
