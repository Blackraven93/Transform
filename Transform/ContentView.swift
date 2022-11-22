//
//  ContentView.swift
//  Transform
//
//  Created by blackRaven on 2022/10/01.
//

import SwiftUI
import Charts

struct ContentView: View {
    @AppStorage("log_status") var log_Status = false
    
    var body: some View {
        ZStack{
            MainView()
//            if log_Status{
//                MainView()
//            }
//            else{
//                LoginView()
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
