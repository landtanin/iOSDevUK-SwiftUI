//
//  ExchangeRate.swift
//  iOSDevUK-SwiftUI-Post-examples
//
//  Created by Tanin on 14/09/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import USDCurrencyConverter

class ExchangeRate: ObservableObject {
    
    @Published var usdToGbp : Double = 0
    
    #error("GET YOUR API KEY AT https://currencylayer.com/")
    let apiKey = "YOUR_API_KEY"
    
    init() {
    
        let converter = USDCurrencyConverter(apiKey: apiKey)
        
        converter.convertUSDTo(currency: .GBP) { [weak self] data in
            guard let resultData = data, let json = try? JSON(data: resultData) else {
                debugPrint("json empty")
                return
            }
            
            if let usdToGpbDouble = Double(json["quotes"]["USDGBP"].stringValue) {
                self?.usdToGbp = usdToGpbDouble
            }
        }
        
    }
    
}

