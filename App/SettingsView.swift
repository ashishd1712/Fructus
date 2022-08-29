//
//  SettingsView.swift
//  Fructus
//
//  Created by Ashish Dutt on 27/08/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    @Environment(\.presentationMode) var presentationMode
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    // MARK: - SECTION-1
                    GroupBox(){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            
                            Text("Most Fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }label: {
                        Group {
                            SettingsLabelView(titleLabel: "Fructus", imageLabel: "info.circle")
                        }
                        
                    }
                    
                    
                    // MARK: - SECTION-2
                    
                    GroupBox{
                        Divider().padding(.vertical,4)
                        
                        Text("If you wish, you can restart the application by toggling the restart button in this box. That way it starts the onboarding process again and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            
                            if isOnboarding {
                                
                                Text("Restarted".uppercased())
                                    .foregroundColor(.green)
                                    .fontWeight(.bold)
                                    
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                        
                    }label: {
                        SettingsLabelView(titleLabel: "Customisation", imageLabel: "paintbrush")
                    }
                    
                    // MARK: - SECTION-3
                    GroupBox{
                        
                        SettingRowView(label: "Developer/Designer", content: "Ashish Dutt")
                        
                        SettingRowView(label: "Compatability", content: "iOS 14")
                        
                        SettingRowView(label: "Github", linkDestination: "github.com/ashishd1712", linkLabel: "ashishd1712")
                        
                        SettingRowView(label: "LinkedIN", linkDestination: "www.linkedin.com/in/ashish-dutt-20871a227", linkLabel: "Ashish Dutt")
                        
                        SettingRowView(label: "SwiftUI", content: "3.0")
                        
                        SettingRowView(label: "Version", content: "1.0" )
                        
                        
                    } label: {
                        
                        SettingsLabelView(titleLabel: "Application", imageLabel: "apps.iphone")
                    }
                    
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button(action:{
                        presentationMode.wrappedValue.dismiss()
                    }){
                        Image(systemName: "xmark")
                    }
            )
            .padding()
        }
        
    }
}
// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
