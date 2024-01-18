//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Ayoub Jouda on 1/3/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    
    var fruit:Fruit
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .center, spacing: 20){
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        Text(fruit.title).font(.largeTitle).fontWeight(.heavy).foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline).font(.headline).multilineTextAlignment(.leading)
                        FruitNutrientsView(fruit: fruit)
                        Text("Learn More About \(fruit.title)".uppercased()).fontWeight(.bold).foregroundColor(fruit.gradientColors[1])
                        Text(fruit.description).multilineTextAlignment(.leading)
                        SourceLinkView().padding(.bottom,40)
                        
                    }.padding(.horizontal,20).frame(maxWidth: 640 , alignment: .center)
                }
            }.edgesIgnoringSafeArea(.top)
         
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit:fruitData[0])
    }
}
