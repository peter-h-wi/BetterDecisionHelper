//
//  ContentViewTwo.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/1/20.
//

import SwiftUI


struct ContentViewTwo: View {
    @State var features: Array<String>
        = ["", "", ""]

    var body: some View {
        
        VStack(alignment: .leading, spacing: nil, content: {
            HStack() {
                Spacer()
                Button(action: {
                        features.append("")}) {
                    Text ("Add")
                }
            }
            ForEach(features.indices, id: \.self) { i in
                HStack() {
                    Text("Element " + String(i+1))
                        .font(.callout)
                        .bold()
                    TextField("Enter the features to compare...", text: $features[i])
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
            }
            Spacer();
            HStack(){
                Spacer()
                NavigationLink(destination:Text("hi")) {
                    Text("Next")
                }.navigationTitle("What to Compare")
            }.offset(x: -30, y: -300)
        }).padding()
    }
}

struct ContentViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTwo()
    }
}
