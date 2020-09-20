//
//  Test.swift
//  MyFirstApplication
//
//  Created by Максим on 10.09.2020.
//  Copyright © 2020 Max. All rights reserved.


import SwiftUI

struct Test: View {
    @State private var registration = false
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Text("Welcome to Dr. Sleep")
                    .font(.largeTitle)
                    //.padding(.bottom, 80)
                Spacer()
                Text("This application will help you set up your sleep and get enough sleep at the appointed time.")
                    .padding(.horizontal, 80)
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.registration = true
                }) {
                    Text("Start dating")
                        .padding(.horizontal, 100)
                        .padding(.vertical, 10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Button(action: {
                    print("Skip button tapped!")
                }){
                    Text("Skip")
                        .font(.callout)
                }
                .padding()
                NavigationLink(destination: Registration(), isActive: self.$registration){
                    Text("")
                }
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
