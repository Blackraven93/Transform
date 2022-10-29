//
//  MainView.swift
//  Transform
//
//  Created by SeongHoon Jang on 2022/10/13.
//

import SwiftUI
import Firebase

enum MenuList: String, CaseIterable {
    case todo = "To Do"
    case check = "Check"
}

struct MainView: View {
    @State var segmentationSelection: MenuList = .todo
    @AppStorage("log_status") var log_Status = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea(.all)
                
                VStack(spacing: 20){
                    Picker("", selection: $segmentationSelection) {
                        ForEach(MenuList.allCases, id: \.self) { option in
                            Text(option.rawValue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    
                    switch segmentationSelection {
                    case .todo:
                        MainTodoView()
                    case .check:
                        MainCheckView()
                    }

                    Spacer()
                    
                    Button(action: {
                        // Logging Out User.
                        DispatchQueue.global(qos: .background).async {
                            try? Auth.auth().signOut()
                        }
                        
                        // Setting Back View To Login.
                        withAnimation(.easeOut){
                            log_Status = false
                        }
                        
                    }, label: {
                        Text("Log Out")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.vertical,12)
                            .frame(width: UIScreen.main.bounds.width / 2)
                            .background(Color.pink)
                            .clipShape(Capsule())
                    })
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Servay")
                            .font(.title)
                            .accessibilityAddTraits(.isHeader)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            NavigationLink(destination: EmptyView()) {
                                Image(systemName: "gearshape")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
