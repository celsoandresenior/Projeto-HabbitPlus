//
//  SplashViewModel.swift
//  Projeto HabbitPlus
//
//  Created by Celso Lima on 19/04/23.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.uiState = .goToSignInScreen
        }
    }
}
