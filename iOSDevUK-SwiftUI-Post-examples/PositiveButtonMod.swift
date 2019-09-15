//
//  TitleLabelMod.swift
//  iOSDevUK-SwiftUI-Post-examples
//
//  Created by Tanin on 14/09/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

import SwiftUI

struct PositiveButtonMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
            .opacity(0.8)
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(5)
    }
}
