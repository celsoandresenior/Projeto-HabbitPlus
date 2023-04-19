//
//  SplashUIState.swift
//  Projeto HabbitPlus
//
//  Created by Celso Lima on 19/04/23.
//

import Foundation

// Para auxiliar o estado do app.

enum SplashUIState {
    case loading
    case goToSignInScreen
    case goToHomeScreen
    case error(String)
}
