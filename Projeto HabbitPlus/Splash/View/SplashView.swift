//
//  SplashView.swift
//  Projeto HabbitPlus
//
//  Created by Celso Lima on 19/04/23.
//

import SwiftUI

struct SplashView: View {
    
    // MARK: States
    @State var state: SplashUIState = .loading
    
    var body: some View {
        
        switch state {
        case .loading:
            Text("Loading")
        case .goToSignInScreen:
            Text("signin")
        case .goToHomeScreen:
            Text("home")
        case .error(let msg):
            Text("\(msg)")
        }
        
        
       
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .goToHomeScreen)
    }
}
