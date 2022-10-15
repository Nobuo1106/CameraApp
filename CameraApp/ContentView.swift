//
//  ContentView.swift
//  CameraApp
//
//  Created by apple on 2022/10/12.
//

import SwiftUI

struct ContentView: View {
    @State var image: Image?
    @State var isPicking = false
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Spacer()
                    image?
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        self.isPicking = true
                    }){
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            if isPicking {
                ImagePicker()
                Rectangle()
                    .edgesIgnoringSafeArea(.all)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
