//
//  OnboardingVM.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import SwiftUI

class OnboardingVM: ObservableObject {
    var slides: [Onboarding] = Onboarding.onboardingData
    @Published var currentStep: Int = 0
    @Published var isPresentSubscript: Bool = false
    
    func goToNextStep() {
        if currentStep < slides.count - 1 {
            currentStep += 1
        } else {
            isPresentSubscript = true
            print("subscript")
        }
    }
}
