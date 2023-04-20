//
//  SplashViewRouter.swift
//  Projeto HabbitPlus
//
//  Created by Celso Lima on 20/04/23.
//

import SwiftUI

enum SplashViewRouter {
    static func makeSignInView() -> some View {
        let vm =  SignInViewModel()
        return SignInView(vm: vm)
    }
}
