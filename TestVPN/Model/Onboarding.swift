//
//  Onboarding.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import Foundation

struct Onboarding:Identifiable{
    let id = UUID().uuidString
    let title: String
    let description: String
    let image: String
    
    static let onboardingData: [Onboarding] = [
        .init(title: "Добро пожаловать!", description: "Мы сделали удобный VPN-сервис для вашего комфорта без лишних отвлечений", image: "Illustration_1"),
        .init(title: "Надежное подключение", description: "Мы защитили ваше соединение от внешнего мира, чтобы вы чувствовали себя спокойно", image: "Illustration_2"),
        .init(title: "Отсутствие рекламы", description: "Мы полностью убрали постороннюю рекламу, чтобы ничто не отвлекало вас от важных дел", image: "Illustration_3"),
    ]
}
