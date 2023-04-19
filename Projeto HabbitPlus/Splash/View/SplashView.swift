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
            // VelmaImage()
            // velmaLoad
            velmaLoading(forma: "Terceira Forma")
        case .goToSignInScreen:
            Text("signin")
        case .goToHomeScreen:
            Text("home")
        case .error(let msg):
            Text("\(msg)")
        }
    }
}


// Instancia de View
struct VelmaImage: View {
    var body: some View {
        ZStack {
            Image("velma")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            Text("Primeira Forma")
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

extension SplashView {
    var velmaLoad: some View {
        ZStack {
            Image("velma")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            Text("Segunda Forma")
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

extension SplashView {
    func velmaLoading(forma: String) -> some View {
        ZStack {
            Image("velma")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            Text(forma)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .loading)
    }
}
