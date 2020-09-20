//
//  UserModel.swift
//  MyFirstApplication
//
//  Created by g01dt00th on 20.09.2020.
//  Copyright © 2020 Max. All rights reserved.
//

import SwiftUI

class UserModel: ObservableObject {
   @Published var name = ""
    @Published var age = ""
    @Published var education = false
    @Published var work = false
}
