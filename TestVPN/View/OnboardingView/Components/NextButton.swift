//
//  NextButton.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

struct NextButton: View {
    let currentStep: Int
    let totalSteps: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                
                HStack(spacing: 4) {
                    Text("\(currentStep)/\(totalSteps)")
                    
                    ForEach(0..<totalSteps, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 27, height: 2)
                            .foregroundColor(index < currentStep ? .white : .colorText)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 4) {
                    Text(currentStep == totalSteps ? "Завершить" : "Далее")
                    
                    Image(.right)
                        .rotationEffect(.degrees(currentStep == totalSteps ? -45 : 0))
                }
            }
            .frame(maxWidth: .infinity)
            .font(.geist(.regular, size: 18))
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.vertical, 12)
            .background(.colorButton)
            .cornerRadius(16)
            .padding(.horizontal)
            .animation(.linear, value: currentStep)
        }
    }
}

#Preview {
    NextButton(currentStep: 1, totalSteps: 3, action: {})
}
