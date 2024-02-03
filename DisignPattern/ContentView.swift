//
//  ContentView.swift
//  DisignPattern
//
//  Created by hyunho lee on 2024/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NameView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            MoneyView()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            YoutubeView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct NameView: View {
    
    @ObservedObject var userdata = UserManager.shared
    
    var body: some View {
        VStack {
            Text("안녕하세요 \(userdata.user.name)")
            Button {
                userdata.user.name = "리이오예"
            } label: {
                Text("터치")
            }

        }
    }
}

struct MoneyView: View {
    
    @ObservedObject var userdata = UserManager.shared
    
    var body: some View {
        Text("\(userdata.user.name)님의 잔액은 1000원 입니다")
    }
}

struct YoutubeView: View {
    
    @ObservedObject var userdata = UserManager.shared
    
    var body: some View {
        Text("\(userdata.user.name)님은 개발자리를 구독하고 있습니다")
    }
}

#Preview {
    ContentView()
}
