//
//  ContentViewFour.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/2/20.
//

import SwiftUI


struct ContentViewFour: View {
    @EnvironmentObject var settings: Settings
    var option1result: Int {
        var sums1 = 0
        for value in settings.option1values {
            sums1 += value
        }
        return sums1
    }
    var option2result: Int {
        var sums2 = 0
        for value in settings.option2values {
            sums2 += value
        }
        return sums2
    }
    
    var body: some View {
        Form {
            Section {
                if (option1result>option2result) {
                    Text(settings.option1)
                        .font(.headline)
                    Text(" is the better option!")
                        .font(.subheadline)
                } else if (option1result<option2result) {
                    Text(settings.option2)
                        .font(.headline)
                    Text(" is the better option!")
                        .font(.subheadline)
                } else {
                    Text(settings.option1 + " and " + settings.option2 + " both are the same!")
                        .font(.subheadline)
                }
            }
            Section {
                Text("Details")
                    .font(.headline)
                Text(settings.option1 + "'s score: " + String(option1result))
                Text(settings.option2 + "'s score: " + String(option2result))
            }
        }.padding()
        
    }
}

struct ContentViewFour_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewFour().environmentObject(Settings())
    }
}
