////
////  TestHomeView.swift
////  Transform
////
////  Created by SeongHoon Jang on 2022/10/11.
////
//
//import SwiftUI
//import Firebase
//
//struct TestHomeView: View {
//    @AppStorage("log_status") var log_Status = false
//    @State private var mainMenu = MenuList.todo.rawValue
//
//    var menuList = ["to do", "made"]
//
//    let menu = MenuList.todo.rawValue
//
//    var body: some View {
//
//        NavigationView{
//
//            VStack(spacing: 20){
//
////                Picker("Main", selection: $mainMenu){
////                    Text("니가 만든 설문").tag(MenuList.todo.rawValue)
////                    Text("내가 만든 설문").tag(MenuList.menu.rawValue)
////                }
////                .pickerStyle(SegmentedPickerStyle())
////                .padding(.horizontal, 20)
////                .padding(.vertical, 10)
////
////                switch mainMenu {
////                case "to do":
////                    Text("sadf")
////                case "made":
////                    Text("bbbb")
////                default:
////                    Text("defalut")
////                }
//
//                Spacer()
//
//                Text("Logged In Successfully Using Apple Login")
//
//                Button(action: {
//                    // Logging Out User...
//                    DispatchQueue.global(qos: .background).async {
//
//                        try? Auth.auth().signOut()
//                    }
//
//                    // Setting Back View To Login...
//                    withAnimation(.easeInOut){
//                        log_Status = false
//                    }
//
//                }, label: {
//
//                    Text("Log Out")
//                        .fontWeight(.semibold)
//                        .foregroundColor(.white)
//                        .padding(.vertical,12)
//                        .frame(width: UIScreen.main.bounds.width / 2)
//                        .background(Color.pink)
//                        .clipShape(Capsule())
//                })
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Text("CLASS 관리")
//                        .font(.title)
//                        .accessibilityAddTraits(.isHeader)
//                }
//
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button {
//
//                    } label: {
//                        NavigationLink(destination: EmptyView()) {
//                            Image(systemName: "gear")
//                                .foregroundColor(.black)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct TestHomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        TestHomeView()
//    }
//}
