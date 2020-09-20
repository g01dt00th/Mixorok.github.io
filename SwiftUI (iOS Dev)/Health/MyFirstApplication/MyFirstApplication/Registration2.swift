//
//  Registration2.swift
//  MyFirstApplication
//
//  Created by Максим on 10.09.2020.
//  Copyright © 2020 Max. All rights reserved.
//

import SwiftUI




struct Registration2: View {
    @ObservedObject var user = User()
        @State private var back = false

    var body: some View {
        Text("Your name \(user.name)")
            
            .navigationBarItems(trailing: Button("Help"){
                    //
            })
                .navigationBarTitle("Who are you?",displayMode: .inline)

        
        
    }
}

struct Registration2_Previews: PreviewProvider {
    static var previews: some View {
        Registration2()
    }
}
