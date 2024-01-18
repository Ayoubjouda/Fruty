//
//  SettingsView.swift
//  Fructus
//
//  Created by Ayoub Jouda on 1/6/23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode)  var presentationMode
    
    @AppStorage("isOnBoarding") var isOnBoarding:Bool = false
    
    var body: some View {
        NavigationView(){
            ScrollView(.vertical , showsIndicators: false){
                VStack(spacing:20) {
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText:"Fructus" , labelImage:"info.circle")
                                ){
                                    Divider().padding(.vertical,2)
                                    HStack(alignment: .center , spacing: 10){
                                        Image("logo").resizable().scaledToFit().frame(width: 80,height: 80).cornerRadius(8)
                                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium dietary fiber, vitamins and much more. ").font(.footnote)
                                    }
                                }
                    GroupBox(label:SettingsLabelView(labelText:"Customization" , labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("if you wish , you can restart the application by toggle the switch in this box. That way it starts the onBoarding process and you will see the welcome screen again.").padding(.vertical,8).frame(minHeight:60).layoutPriority(1).font(.footnote).multilineTextAlignment(.leading)
                       
                        Toggle(isOn: $isOnBoarding){
                            Text("Restart".uppercased()).fontWeight(.bold)
                        }.padding().background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    GroupBox(label:SettingsLabelView(labelText:"Application" , labelImage: "apps.iphone")){
                        
                        SettingRowView(name:"Developper",content:"Ayoub Jouda")
                        SettingRowView(name:"Designer",content:"Ayoub Jouda")
                        SettingRowView(name:"Compatibility",content:"IOS 14+")
                        SettingRowView(name:"Website",linkLabel:"Portfolio",linkDestination:"ayoubjouda.live")
                        SettingRowView(name:"Version",content:"1.0.0")
                       
                        
                    }
                                  
                }.navigationBarTitle(Text("Settings"), displayMode: .large).padding()
                    .navigationBarItems(trailing: Button(action:{
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    })
            }
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}
