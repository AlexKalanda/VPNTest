//
//  CustomButton.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
            }
            .frame(maxWidth: .infinity)
            .font(.geist(.regular, size: 18))
            .foregroundColor(.white)
            .padding(.vertical, 12)
            .background(.colorButton)
            .cornerRadius(16)
        }
    }
}


#Preview {
    CustomButton(title: "Попробовать PRO", action: {})
}
