//
//  MainMadeView.swift
//  Transform
//
//  Created by SeongHoon Jang on 2022/10/11.
//

import SwiftUI

struct CustomButton: View {
    var buttonText: String
    var body: some View {
        Button(buttonText) {
            
        }
        .frame(width: 166, height: 50)
        .background(Color.accentBlack)
        .foregroundColor(Color.accentYellow)
        .cornerRadius(14)
    }
}

struct SurveyMadeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Raven")
                    .fontWeight(.semibold)
                Spacer()
                HStack {
                    Image(systemName: "person.fill")
                    Text("3/12")
                        
                }
            }.padding(.top, 20)
            
            Spacer()
            
            Text("온보딩 결과 설문조사 입니다. 확인 부탁드립니다.")
                .font(.system(size: 30))
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)
                
                
            Spacer()
            
            HStack {
                CustomButton(buttonText: "결과 확인")
                Spacer()
                CustomButton(buttonText: "수정하기")
            }.padding(.bottom, 36)
        }
        .frame(height: 317)
        .padding(.horizontal, 20)
        .background(Color.accentYellow)
    }
}

struct SurveyMadeView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyMadeView()
    }
}
