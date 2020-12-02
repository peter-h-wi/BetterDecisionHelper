//
//  ContentView.swift
//  BetterDecisionHelper
//
//  Created by Peter Wi on 12/1/20.
//

import SwiftUI
import CoreData



struct ContentView: View {
    /*
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
 */
    @EnvironmentObject var settings: Settings
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: nil, content: {
                
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        Text("Option 1")
                            .font(.callout)
                            .bold()
                    TextField("Enter first option...", text: self.$settings.option1)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                })
                HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                            Text("Option 2")
                                .font(.callout)
                                .bold()
                    TextField("Enter second option...", text: self.$settings.option2)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                })
                Spacer()
                HStack(){
                    Spacer()
                    .navigationTitle("Categories")
                    .navigationBarItems(trailing: NavigationLink(destination:ContentViewTwo()) {
                        Text("Next")
                    })
                }
                Spacer()
            }).padding()
        }
    }
/*
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
*/
    /*
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
 */
}
/*
private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()
*/

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Settings())
    }
}
