//
//  ContentView.swift
//  iOSDevUK-SwiftUI-Post-examples
//
//  Created by Tanin on 14/09/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var exchangeRate: ExchangeRate
    let priceInDollar: Double = 699
    
    var body: some View {
        
//        Button(action: accept) {
//            Text("Accept")
//        }.modifier(PositiveButtonMod())
                  
        let priceInPound = priceInDollar * exchangeRate.poundToDollar
        
        return HStack {
            Text("Dear Tim, $699 in pound is")
            PriceTagText(price: priceInPound)
        }
          
    }
    
    func accept() {
        // perform accept action
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
