//
//  ContentViewThree.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/2/20.
//

import SwiftUI

struct ContentViewThree: View {
    @EnvironmentObject var settings: Settings
    var rates = [1,2,3,4,5]
    
    var body: some View {
        //VStack {
                ScrollView {
                    ForEach(settings.features.indices, id: \.self) { i in
                        VStack(alignment: .leading) {
                        
                        Text(settings.features[i])
                            .font(.title)
                        Text(settings.option1)
                            .font(.headline)
                            Picker(selection: $settings.option1values[i], label: Text("Please rate the option")) {
                                ForEach(rates, id: \.self) {rate in
                                    Text(String(rate))
                                }
                            }.pickerStyle(SegmentedPickerStyle())
                            Text(settings.option2)
                                .font(.headline)
                            Picker(selection: $settings.option2values[i], label: Text("Please rate the option")) {
                                ForEach(rates, id: \.self) {rate in
                                    Text(String(rate))
                                }
                            }.pickerStyle(SegmentedPickerStyle())
                            Divider()
                        }.padding()
                    }
                }
                .navigationTitle("Compare")
                    .navigationBarItems(trailing: NavigationLink(destination:ContentViewFour()) {
                        Text("Calculate")
                    })
        //    }.padding()
    }
}

struct ContentViewThree_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewThree().environmentObject(Settings())
    }
}
