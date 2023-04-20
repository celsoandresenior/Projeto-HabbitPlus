//
//  SignInView().swift
//  Projeto HabbitPlus
//
//  Created by Celso Lima on 20/04/23.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var vm: SignInViewModel
    
    var body: some View {
        self.presentView()
    }
}

extension SignInView {
    func presentView() -> some View {
        ZStack {
            Image("tatsumaki")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
                
        }
        .background(Color.purple)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(vm: SignInViewModel())
    }
}
