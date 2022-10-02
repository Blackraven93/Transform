//
//  ContentView.swift
//  Transform
//
//  Created by blackRaven on 2022/10/01.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach() { item in
                    LineMark(
                        x: .value("Month", item.date),
                        y: .value("Temp", item.temperature)
                    )
                }
            }
            .frame(height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
