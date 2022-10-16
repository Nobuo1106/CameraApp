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
                    Button(action: {
                        self.isPicking = true
                    }){
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            if isPicking {
                Rectangle()
                ImagePicker(image:$image, isPicking: $isPicking)
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
