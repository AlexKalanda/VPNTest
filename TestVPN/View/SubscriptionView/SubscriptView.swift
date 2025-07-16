//
//  SubscriptionView.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

struct SubscriptView: View {
    @StateObject var vm = SubscriptVM()
    
    var body: some View {
        VStack {
            HeaderSubscriptionView()
                .padding(.horizontal)
                .padding(.bottom,20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(vm.advantages, id: \.id) { advantage in
                        AdvantagCell(advantage: advantage)
                    }
                }
            }
            .contentMargins(.horizontal, 16, for: .automatic)
            
            VStack {
                HStack {
                    PlanCell(plan: vm.plans[0], isSelect: $vm.isSelectPlan) {
                        vm.togglePlanSelection(selectedPlan: vm.plans[0])
                    }
                    PlanCell(plan: vm.plans[1], isSelect: $vm.isSelectPlan) {
                        vm.togglePlanSelection(selectedPlan: vm.plans[1])
                    }
                }
                PlanCell(plan: vm.plans[2], isSelect: $vm.isSelectPlan) {
                    vm.togglePlanSelection(selectedPlan: vm.plans[2])
                }
            }
            .padding(.horizontal)
            .padding(.top,20)
            
            CustomButton(title: "Попробовать PRO") {
                print("Попробовать PRO")
            }
            .padding(.top,20)
            .padding(.horizontal)
            
            PrivacyPolicyText()
                .padding(.top,20)
                .padding(.horizontal)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.colorBG)
    }
}

#Preview {
    SubscriptView()
}



