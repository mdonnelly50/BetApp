//
//  SettingView.swift
//  MikeAppFinal
//
//  Created by xcode15 on 5/14/24.
//

import SwiftUI

struct SettingView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    
                }
                Section(header: Text("Login")) {
                    NavigationLink(destination: MultiAccountView(), label: {
                        Text("Switch Account")
                    })
                    Text("Log out")
                    
                }
            }
            .navigationTitle("Settings and Privacy")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SettingView()
}
