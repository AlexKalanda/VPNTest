//
//  PlanCell.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import SwiftUI

struct PlanCell: View {
    let plan: Plan
    @Binding var isSelect: Plan?
    var selectedPlan: (() -> Void)?
    var body: some View {
        
        VStack(spacing: 40) {
            HStack {
                Circle().frame(width: 32, height: 32)
                    .foregroundStyle(.colorButton2)
                    .overlay {
                        if let selectedPlanId = isSelect?.id, selectedPlanId == plan.id {
                            Circle().frame(width: 24, height: 24)
                                .foregroundStyle(.colorButton)
                        }
                    }
                Spacer()
                if let discount = plan.discount {
                    Text("\(discount)")
                        .font(.geist(.regular, size: 14))
                        .foregroundColor(.white)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .background(.colorButton)
                        .cornerRadius(100)
                }
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text(plan.period.rawValue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.white)
                    .font(.geist(.semiBold, size: 20))
                Text("\(plan.price) ₽, ОТМЕНА В ЛЮБОЕ ВРЕМЯ")
                    .foregroundStyle(.colorText)
                    .font(.geist(.regular, size: 12))
                    .fixedSize(horizontal: false, vertical: true) 
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .foregroundStyle(.colorBGplanCell)
                .overlay {
                    if let selectedPlanId = isSelect?.id, selectedPlanId == plan.id {
                        RoundedRectangle(cornerRadius: 16)
                            .strokeBorder(lineWidth: 2)
                            .foregroundStyle(.colorButton)
                    }
                }
            
        )
        .onTapGesture {
            withAnimation(.smooth) {
                selectedPlan?()
            }
        }
    }
}

#Preview {
    PlanCell(plan: Plan.planData[0], isSelect: .constant(Plan.planData[0]))
}
