//
//  ToTwoPlaces.swift
//  iOSDevUK-SwiftUI-Post-examples
//
//  Created by Tanin on 14/09/2019.
//  Copyright © 2019 landtanin. All rights reserved.
//

import SwiftUI

@propertyWrapper
struct ToTwoPlaces {
    private(set) var value: Double = 0

    private let multiplier = 100.0

    var wrappedValue: Double {
        get {value}
        set {
            value = ((newValue * multiplier).rounded()) / multiplier
        }
    }

    init(wrappedValue initialValue: Double) {
        self.wrappedValue = initialValue
    }
}
