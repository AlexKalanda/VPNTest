//
//  PrivacyPolicyText.swift
//  TestVPN
//
//  Created by admin on 16/7/2025.
//

import SwiftUI

struct PrivacyPolicyText: View {
    @State private var showPrivacyPolicy = false
    @State private var showTermsOfUse = false
    
    var body: some View {
        Text(attributedPrivacyPolicy)
            .foregroundStyle(.colorText)
            .font(.geist(.regular, size: 12))
            .multilineTextAlignment(.center)
    }
    
    private var attributedPrivacyPolicy: AttributedString {
        let fullText = Constants.privacyPolicyText.uppercased()
        var attributedString = AttributedString(fullText)
        
        if let privacyRange = attributedString.range(of: "ПОЛИТИКОЙ КОНФИДЕНЦИАЛЬНОСТИ") {
            attributedString[privacyRange].foregroundColor = .white
            attributedString[privacyRange].underlineStyle = .none
        }
        
        if let termsRange = attributedString.range(of: "УСЛОВИЯМИ ИСПОЛЬЗОВАНИЯ") {
            attributedString[termsRange].foregroundColor = .white
            attributedString[termsRange].underlineStyle = .none
        }
        
        return attributedString
    }
}

#Preview {
    PrivacyPolicyText()
}
