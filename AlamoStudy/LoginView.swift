//
//  LoginView.swift
//  AlamoStudy
//
//  Created by Hyeonsoo Kim on 2022/05/09.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "lock.shield.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: Text("log in")) {
                    Text("LOGIN")
                }
                .buttonStyle(MyButton(color: .blue))

                NavigationLink(destination: Text("sign up")) {
                    Text("SIGN UP")
                }
                .buttonStyle(MyButton(color: .black))
                
                Spacer()
                
                NavigationLink(destination: Text("profile")) {
                    Text("PROFILE")
                }
                .buttonStyle(MyButton(color: .purple))
                
                NavigationLink(destination: Text("user list")) {
                    Text("USER LIST")
                }
                .buttonStyle(MyButton(color: .green))
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//custom buttonstyle
struct MyButton: ButtonStyle {
    
    let color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .font(.system(.title2, design: .rounded).bold())
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width / 5 * 4)
            .padding()
            .background(
                color
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            )
    }
}
