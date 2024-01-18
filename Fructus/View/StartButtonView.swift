//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ayoub Jouda on 12/25/22.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding :Bool?
    var body: some View {
        
        HStack(spacing:8) {
            Button(action:{isOnBoarding=false;}){
                Text("Start")
            }.accentColor(Color.white)
            Image(systemName: "arrow.right.circle").imageScale(.large).foregroundColor(Color.white)
        }
        .padding(.horizontal,16)
        .padding(.vertical,10)
        .background(
            Capsule().strokeBorder(Color.white , lineWidth:1.25))
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
