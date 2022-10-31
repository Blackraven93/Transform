//
//  TabBarButton.swift
//  Transform
//
//  Created by SeongHoon Jang on 2022/10/29.
//

import SwiftUI

struct TabBarButton: View {
    @Binding var current : String
    var item : String
    var animation : Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation{current = item}
        }) {
            VStack(spacing: 5){
                Text(item)
                    .font(.poppins(.semibold, size: 15))
                    .foregroundColor(current == item ? Color("accentYellow") : Color("accentYellow").opacity(0.5))
                    .frame(height: 35)

                ZStack{
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 4)
                    
                    if current == item{
                        Rectangle()
                            .fill(Color("accentYellow"))
                            .frame(height: 4)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
            }
        }
    }
}
