//
//  GearMenuTip.swift
//  GesturesInSwiftUI
//
//  Created by Rafał Gęsior on 22/03/2024.
//

import Foundation
import TipKit

struct GearMenuTip: Tip {
    var title: Text { Text("Click on the gear menu") }
    var message: Text? { Text("You can change the app language if needed") }
    var asset: Image? { Image(systemName: "figure.walk.motion") }
}
