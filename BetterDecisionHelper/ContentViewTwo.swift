//
//  ContentViewTwo.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/1/20.
//

import SwiftUI


struct ContentViewTwo: View {
    
    @EnvironmentObject var settings: Settings

    var body: some View {
        
        VStack(alignment: .leading, spacing: nil, content: {
            
            ForEach(settings.features.indices, id: \.self) { i in
                HStack() {
                    Text("Element " + String(i+1))
                        .font(.callout)
                        .bold()
                    TextField("Enter the features to compare...", text: $settings.features[i])
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            HStack() {
                Spacer()
                Button(action: {
                    if (settings.features.count<9){
                        settings.features.append("")
                        settings.option1values.append(0)
                        settings.option2values.append(0)
                    }}) {
                    Text ("Add")
                }
            }
            Spacer();
            HStack(){
                Spacer()
                .navigationTitle("What to Compare")
                .navigationBarItems(trailing: NavigationLink(destination:ContentViewThree()) {
                    Text("Next")
                })
            }.offset(x: -30, y: -300)
        }).padding()
    }
}

struct ContentViewTwo_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentViewTwo().environmentObject(Settings())
    }
}
