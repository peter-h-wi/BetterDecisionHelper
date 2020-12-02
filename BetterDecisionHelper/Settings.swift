//
//  Settings.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/2/20.
//

import Foundation
class Settings: ObservableObject {
    @Published var option1: String = ""
    @Published var option2: String = ""
    @Published var features: Array<String> = ["", "", ""]
    @Published var option1values: Array<Int> = [0,0,0]
    @Published var option2values: Array<Int> = [0,0,0]
    @Published var count: Int = 0
}
