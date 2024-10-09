//
//  LoadingService.swift
//  SwiftUI-List-Starter
//
//  Created by Alexander Gerus on 28.06.2023.
//

import Foundation

final class AccountViewModel: ObservableObject {

    @Published var account: Account?
    @Published var isLoading = false
    @Published var alertItem: AlertItem?
    
    func startNetworkCall() {
        self.isLoading = true
        NetworkManager.shared.getHomeWorld { [self] result in
            DispatchQueue.main.async {
                self.isLoading = false
                
                switch result {
                case .success(let accountData):
                    self.account = accountData
                    print(self.account)
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
