//
//  LoginView.swift
//  recuppa
//
//  Created by Araz Ashkan Abedi on 14/03/2023.
//

import SwiftUI

struct LoginView: View {
    
    // ARAZ: User Details
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack() {
                Text("aye up")
                    .font(.custom("AmericanTypewriter", fixedSize: 54))
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .lineLimit(1)
                    .padding(.leading, 40.0)
                    .hAlign(.leading)
                Text("welcome back!")
                    .font(.custom("AmericanTypewriter", fixedSize: 42))
                    .foregroundColor(Color.white)
                    .lineLimit(1)
                    .padding(.leading, 40.0)
                    .hAlign(.leading)
            }
            .padding(.bottom, 100.0)
            .padding(.top, 40)
            VStack(spacing: 20.0) {
                VStack {
                    Text("email")
                        .hAlign(.leading)
                        .font(.custom("AmericanTypewriter", fixedSize: 14))
                    TextField("", text: $username)
                    Rectangle()
                        .frame(height: 0.8)
                        .foregroundColor(Color.init(red: 8/255, green: 25/255, blue:53/255))
                        .padding(.bottom, 20)
                    Text("password")
                        .hAlign(.leading)
                        .font(.custom("AmericanTypewriter", fixedSize: 14))
                    SecureField("", text: $password)

                    Rectangle()
                        .frame(height: 0.8)
                        .foregroundColor(Color.init(red: 8/255, green: 25/255, blue:53/255))
                }
                .padding(.horizontal, 35)
                .padding(.vertical, 10)
                Button("forgot your Password?", action: {})
                    .font(.custom("AmericanTypewriter", fixedSize: 12))
                    .padding(.bottom, 40)
                Button {
                    
                } label: {
                    Text("log in")
                        .foregroundColor(.white)
                        .fillview(.yellow)
                        .font(.custom("AmericanTypewriter", fixedSize: 26))
                }
                HStack {
                    Text("don't have an account?")
                        .font(.custom("AmericanTypewriter", fixedSize: 12))
                    Button("Sign up", action: {})
                        .font(.custom("AmericanTypewriter", fixedSize: 12))
                }
            }
            .padding(.top, 40)
            .background(
                RoundedCornersShape(corners: [.topLeft, .topRight], radius:45)
                    .fill(Color(.white))
            )
        }
        .background(Color.init(red: 13/255, green: 25/255, blue: 51/255))
        .vAlign(.topLeading)
    }
}

struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

// ARAZ: Extension functions for UI building
extension View {
    func hAlign(_ alignment: Alignment)->some View{
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    func vAlign(_ alignment: Alignment)->some View{
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    func fillview(_ color: Color)-> some View {
        self
            .padding(.horizontal, 125)
            .padding(.vertical,15)
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.init(red: 8/255, green: 25/255, blue:53/255), Color.init(red: 3/255, green: 93/255, blue:110/255)]), startPoint: .leading, endPoint: .trailing))
            }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
