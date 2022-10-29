//
//  MainTodoView.swift
//  Transform
//
//  Created by SeongHoon Jang on 2022/10/11.
//

import SwiftUI

struct MainTodoView: View {
    @State var surveyTitle = "온보딩 만족도 조사"
    
    var body: some View {
        todoBox
    }
    
    var todoBox: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 13, style: .circular)
                .foregroundColor(Color("Box"))
            HStack {
                VStack(alignment: .leading) {
                    Text("온보딩 만족도 조사")
                        .font(.system(size: 20, weight: .semibold))
                        .lineLimit(1)
                        .padding(.bottom, 7)
                    Text("레이븐")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.gray)
                        .padding(.bottom, 7)
                    
                    HStack {
                        Image(systemName: "person.fill")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.gray)
                            .padding(.trailing, 13)
                        Text("3/12")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20, weight: .semibold))
                        .padding(.top, 7)
                    Spacer()
                    Text("20분 남음")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 18)
            .padding(.bottom, 18)
            .padding(.horizontal, 20)
        }
        .frame(height: 150)
        .padding(.horizontal, 20)
    }
}


struct MainTodoView_Previews: PreviewProvider {
    static var previews: some View {
        MainTodoView()
    }
}
