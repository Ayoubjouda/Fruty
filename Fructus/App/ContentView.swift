//
//  ContentView.swift
//  Fructus
//
//  Created by Ayoub Jouda on 12/25/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSettingsShowing:Bool = false
    
    var fruits:[Fruit]=fruitData
    
    
    var body: some View {
        NavigationView(){
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit:item)){
                        FruitRowView(fruit:item).padding(.vertical,4)
                    }
                }
            }.navigationTitle("Fruits").navigationBarItems(trailing: Button(action: {
                isSettingsShowing = true
            }){Image(systemName: "slider.horizontal.3")}.sheet(isPresented: $isSettingsShowing){
                SettingsView()
            })

        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits:fruitData) 
    }
}
