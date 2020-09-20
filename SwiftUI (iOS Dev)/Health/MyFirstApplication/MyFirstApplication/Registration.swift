//
//  Registration.swift
//  MyFirstApplication
//
//  Created by Максим on 10.09.2020.
//  Copyright © 2020 Max. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
   @Published var name = ""
    @Published var age = ""
    @Published var education = false
    @Published var work = false
}

struct Registration: View {
    @ObservedObject var user = User()
    @State private var next = false
    
    var body: some View {
        VStack{
            Text("To get started, let's get to know you better!")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.bottom, 50)
            VStack{
                Text("Your name \(user.name)")
                TextField("Enter your name... ", text: $user.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.horizontal,85)
            .padding(.vertical, 20)
            VStack{
                Text("Your age")
                TextField("Enter your age...", text: $user.age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
            }
            .padding(.horizontal,85)
            .padding(.bottom, 30)
            VStack{
                Toggle(isOn: $user.education){
                    Text("You are studying?")
                }
                .padding(.bottom, 20)
                Toggle(isOn: $user.work){
                    Text("You are working?")
                }
            }.padding(30)
            NavigationLink(destination: Registration2(), isActive: self.$next){
                Text("")
            }
            Button(action: {
                self.next = true
            }) {
                Text("Next")
                    .padding(.horizontal, 100)
                    .padding(.vertical, 10)
                    .foregroundColor(.blue)
                    //.background(user.name.isEmpty || user.age.isEmpty ? Color.gray : Color.blue)
                    .cornerRadius(10)
            }
           // .disabled(user.name.isEmpty || user.age.isEmpty)
            
        }
        .navigationBarItems(trailing: Button("Help"){
            //Some Action
        })
            .navigationBarTitle("Acquaintance", displayMode: .inline)
        
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}
