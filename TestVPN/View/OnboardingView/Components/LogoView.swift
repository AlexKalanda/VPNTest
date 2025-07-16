//
//  LogoView.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Image(.union)
                .overlay(alignment: .topTrailing) {
                    Image(.star)
                        .offset(x: 2, y: -2)
                }
            Text("SABER.VPN")
        }
        .foregroundStyle(.colorText)
        .font(.geist(.regular, size: 14))
        .padding(.top,10)
    }
}

#Preview {
    LogoView()
}
