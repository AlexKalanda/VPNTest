//
//  ContentView.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject var vm = OnboardingVM()
    
    var body: some View {
        VStack(spacing: 10) {
            LogoView()
                
            TabView(selection: $vm.currentStep) {
                ForEach(0..<vm.slides.count, id: \.self) { index in
                    SliderItemView(item: vm.slides[index])
                }
            }
            .background(.colorBG)
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            NextButton(currentStep: vm.currentStep + 1, totalSteps: vm.slides.count, action: {
                    withAnimation(.linear) {
                        vm.goToNextStep()
                    }
                }
            )
        }
        .background(.colorBG)
        .fullScreenCover(isPresented: $vm.isPresentSubscript) {
            SubscriptView()
        }
    }
}

#Preview {
    OnboardingView()
}
