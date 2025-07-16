//
//  SubscriptVM.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import SwiftUI

class SubscriptVM: ObservableObject {
    let advantages: [Advantag] = Advantag.advantagseData
    let plans: [Plan] = Plan.planData
    @Published var isSelectPlan: Plan? = nil
    
    func togglePlanSelection(selectedPlan: Plan) {
        isSelectPlan = isSelectPlan?.id == selectedPlan.id ? nil : selectedPlan
    }
}
