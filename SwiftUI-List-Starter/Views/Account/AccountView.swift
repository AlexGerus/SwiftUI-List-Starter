//
//  AccountView.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import SwiftUI

struct AccountView: View {

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var shouldSendNews = false
    @State private var numberOfLikes = 1
    @StateObject private var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            ZStack {
                Form {
                    Section(header: Text("Personal Information")) {
                        TextField("First name", text: $firstName)
                        TextField("Last name", text: $lastName)
                        DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                            .disabled(viewModel.isLoading)
                    }
                    
                    Section(header: Text("Actions")) {
                        Toggle("Send news", isOn: $shouldSendNews)
                            .disabled(viewModel.isLoading)
                        Stepper("Number of likes", value: $numberOfLikes, in: 1...100)
                            .disabled(viewModel.isLoading)
                        Text("This video has \(numberOfLikes) likes")
                        Link("Terms of service", destination: URL(string: "https://de.grse.de/datenschutz")!)
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            hideKeyboard()
                        } label: {
                            Image(systemName: "keyboard.chevron.compact.down")
                        }
                        .unredacted()
                        .disabled(viewModel.isLoading)
                        
                        Button("Save", action: saveUser)
                            .unredacted()
                            .disabled(viewModel.isLoading)
                    }
                }
                
                if viewModel.isLoading {
                    LoadingView()
                }
            }
            .onAppear { viewModel.startNetworkCall() }
            .redacted(reason: viewModel.isLoading ? .placeholder : [])
            .navigationTitle("Account")
        }
        .tint(.red)
        
    }
    
    func saveUser() {
        print("User saved with data: \(firstName) \(lastName) and \(birthdate)")
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
