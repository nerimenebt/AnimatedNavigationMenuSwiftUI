//
//  SideMenu.swift
//  Animated Navigation Menu
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct SideMenu: View {
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Nerimene Neri")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {}, label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            })
            VStack(alignment: .leading, spacing: 10) {
                TabButtons(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                
                TabButtons(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                
                TabButtons(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, animation: animation)
                
                TabButtons(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, animation: animation)
                
                TabButtons(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
            }.padding(.leading, -15)
            .padding(.top, 50)
            Spacer()
            
            VStack(alignment: .leading, spacing: 6, content: {
                TabButtons(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", selectedTab: .constant(""), animation: animation)
                    .padding(.leading, -15)
                
                Text("App Version 1.2.34")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            })
        }).padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

