//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ayoub Jouda on 1/6/23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Contect Source")
                Spacer()
                Link("Wikipedia",destination: URL(string: "https://Wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }.font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits).padding()
    }
}
