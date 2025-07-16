//
//  HeaderSubscriptionView.swift
//  TestVPN
//
//  Created by admin on 15/7/2025.
//

import SwiftUI

struct HeaderSubscriptionView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Подписка")
                    .font(.geist(.semiBold, size: 24))
                    .foregroundStyle(.white)
                
                Text("PRO")
                    .foregroundStyle(.white)
                    .font(.geist(.regular, size: 12))
                    .padding(.horizontal,8)
                    .padding(.vertical,2)
                    .background(
                        ZStack{
                            RoundedRectangle(cornerRadius: 100)
                                .stroke(.colorButton, lineWidth: 2)
                            RoundedRectangle(cornerRadius: 100)
                                .foregroundStyle(.colorButton.opacity(0.4))
                        }
                    )
            }
            .frame(maxWidth: .infinity)
            .overlay(alignment: .trailing) {
                Button {
                    print("Сlose")
                } label: {
                    Image(.X)
                        .foregroundStyle(.colorbuttonX)
                        .padding(10)
                        .background(.colorBGbuttonX)
                        .clipShape(.circle)
                }
            }
            
            Text("Бесплатный сервис в течение 3 бесплатных дней пробного периода!")
                .font(.geist(.regular, size: 18))
                .foregroundStyle(.colorText)
                .padding(.vertical)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true) 
        }
        .padding(.top)
    }
}

#Preview {
    SubscriptView()
}
