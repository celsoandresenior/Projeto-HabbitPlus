//
//  SplashView.swift
//  Projeto HabbitPlus
//
//  Created by Celso Lima on 19/04/23.
//

import SwiftUI

struct SplashView: View {
    
    // MARK: States
    
    @ObservedObject var vm: SplashViewModel
    
    var body: some View {
        Group {
            switch vm.uiState {
            case .loading:
                // VelmaImage()
                velmaLoad
            case .goToSignInScreen:
                self.vm.signInView()
            case .goToHomeScreen:
                Text("home")
            case .error(let msg):
                self.velmaLoading(error: msg)
            }
            
        }.onAppear { self.vm.onAppear() }
    }
}


// Instancia de View
struct VelmaImage: View {
    var body: some View {
        ZStack {
            Image("velma1")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            Text("Primeira Forma")
                .foregroundColor(.white)
                .font(.system(size: 36, weight: .black, design: .serif))
        }
    }
}

extension SplashView {
    var velmaLoad: some View {
        ZStack {
            Image("velma1")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            Text("Segunda Forma")
                .foregroundColor(.white)
                .font(.system(size: 36, weight: .black, design: .serif))
        }
    }
}

extension SplashView {
    func velmaLoading(error: String? = nil) -> some View {
        ZStack {
            Image("mikasa")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("putaria"),
                              message: Text(error).foregroundColor(.white).font(.system(size: 36, weight: .black, design: .serif)),
                              dismissButton: .default(Text("OK!")) {
                                //Faz algo quando some o alerta
                            }
                        )
                    }
            }
            
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(vm: SplashViewModel())
    }
}
