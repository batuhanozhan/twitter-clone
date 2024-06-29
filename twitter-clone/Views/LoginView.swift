import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 25) {
                // X icon
                Image("x-logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.top)
                Spacer()
                // Sign in to twitter
                Text("Sign in to twitter")
                    .foregroundColor(.white)
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                // Google sign in button
                Button(action: {}) {
                    HStack {
                        Image("google-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Sign In with Google")
                            .font(.system(size: 18))
                            .padding()
                    }
                    .padding()
                    .foregroundColor(.black)
                    .frame(width: 340, height: 45)
                    .background(.white)
                    .cornerRadius(50)
                }
                
                // Apple sign in button
                Button(action: {}) {
                    HStack {
                        Image("apple-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                        Text("Sign In with Apple")
                            .font(.system(size: 18, weight: .semibold))
                            .padding()
                    }
                    .padding()
                    .foregroundColor(.black)
                    .frame(width: 340, height: 45)
                    .background(.white)
                    .cornerRadius(50)
                }
                
                // OR Line
                HStack {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1)
                    
                    Text("OR")
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1)
                }
                .frame(width: 340)
                
                // Email text field
                ZStack(alignment: .leading) {
                    if email.isEmpty {
                        Text("Phone, email or username")
                            .bold()
                            .foregroundColor(Color.gray.opacity(0.4))
                            .padding(.horizontal, 15)
                    }
                    TextField("", text: $email)
                        .foregroundColor(.white)
                        .autocapitalization(.none)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 17)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(Color.gray, lineWidth: 1.0)
                        )
                        .tint(.white)
                }
                .padding(.horizontal, 15)
                
                // Next button
                Button(action: {}) {
                    Text("Next")
                        .font(.system(size: 18, weight: .bold))
                        .padding()
                        .foregroundColor(.black)
                        .frame(width: 340, height: 45)
                        .background(.white)
                        .cornerRadius(50)
                }
                
                // Forgot password
                Button(action: {}) {
                    Text("Forgot Password?")
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 340, height: 45)
                        .background(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(.white, lineWidth: 1)
                        )
                }
                
                // Don't have an account (sign up) button
                HStack{
                    Text("Don't have an account")
                        .foregroundStyle(.white)
                    
                    Button(action:{}) {
                        Text("Sign up")
                            .foregroundStyle(.cyan)
                    }
                }
                Spacer()
            }
            .padding(30)
        }
    }
}

#Preview {
    LoginView()
}
