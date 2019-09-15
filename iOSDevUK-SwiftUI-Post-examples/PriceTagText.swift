//
//  PriceTwoPlacesText.swift
//  iOSDevUK-SwiftUI-Post-examples
//
//  Created by Tanin on 15/09/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

import SwiftUI

struct PriceTagText: View {

    @ToTwoPlaces var price: Double
    
    var body: some View {
        Text(String(price))
            .bold()
            .padding(8)
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(5)
    }
    
}
