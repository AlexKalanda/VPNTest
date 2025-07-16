//
//  SliderItemView.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

struct SliderItemView: View {
    var item: Onboarding
    var tag: Int = 0
    var body: some View {
        VStack(spacing: 10) {
            Text(item.title)
                .font(.geist(.medium, size: 48))
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
            
            Image(item.image)
            
            Text(item.description)
                .foregroundStyle(.colorText)
                .multilineTextAlignment(.center)
                .font(.geist(.regular, size: 18))
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SliderItemView(item: Onboarding.onboardingData[2])
}
