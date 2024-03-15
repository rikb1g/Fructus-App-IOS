//
//  SettingsView.swift
//  Fructus
//
//  Created by Ricardo Sousa on 14/03/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 89)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have colesterol. Fruits are sources of many essential nutrients, including potassium, dietay fiber, vitamins, and much more,")
                                .font(.footnote)
                        }
                    }
                    // MARK: SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application bt toogle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                                    
                                    
                                    
                        )
                        
                        
                    }//: GROUPBOX
                    
                    
                    
                    // MARK: SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                            
                            SettingsRowView(name: "Developer",content: "Ricardo Sousa")
                            SettingsRowView(name: "Designer", content:"Robert")
                            SettingsRowView(name: "Compatibility",content: "IOS 14")
                            SettingsRowView(name: "Website",linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                            SettingsRowView(name: "Twitter",linkLabel: "@ricardojsousa88",linkDestination: "twitter.com/ricardojsousa88")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version",content: "1.1.0")
                            
                            
                            
                        }//: GROUPBOX
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: SCROLL
            
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
