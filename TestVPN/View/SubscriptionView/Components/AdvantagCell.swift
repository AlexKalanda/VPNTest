//
//  AdvantagCell.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import SwiftUI

struct AdvantagCell: View {
    let advantage: Advantag
    var body: some View {
        HStack {
            Image(advantage.imageName)
            Text(advantage.text)
        }
        .padding(.horizontal)
        .padding(.vertical, 12)
        .background(.colorButton)
        .cornerRadius(100)
        .foregroundStyle(.white)
        .font(.geist(.regular, size: 18))
    }
}

#Preview {
    AdvantagCell(advantage: Advantag.advantagseData[0])
}
