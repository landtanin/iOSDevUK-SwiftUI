//
//  CurrencyDif.swift
//  iOSDevUK-SwiftUI-Post-examples
//
//  Created by Tanin on 14/09/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

import SwiftUI
import Alamofire
import SwiftyJSON

class ExchangeRate: ObservableObject {
    
    @Published var usdToGbp : Double = 0
    
    #error("GET YOUR API KEY AT https://currencylayer.com/")
    let apiKey = "your api key"
    
    init() {
        
        let strUrl = "http://apilayer.net/api/live?"
        let url = URL(string: strUrl)!
        
        Alamofire.request(url, method: .get, parameters: ["access_key":apiKey,
            "currencies":"GBP",
            "format":"1"])
            .response { [weak self] (response) in

                guard let data = response.data else {
                    debugPrint("data empty")
                    return
                }
                
                guard let json = try? JSON(data: data) else {
                    debugPrint("json empty")
                    return
                }
                
                if let usdToGpbDouble = Double(json["quotes"]["USDGBP"].stringValue) {
                    self?.usdToGbp = usdToGpbDouble
                }

        }
        
    }
    
}

