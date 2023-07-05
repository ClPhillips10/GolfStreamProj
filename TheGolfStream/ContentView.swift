//
//  ContentView.swift
//  TheGolfStream
//
//  Created by Lake Phillips on 6/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var UserName = ""
    @State private var Password = ""
    @State private var WrongPassword = 0
    @State private var WrongUsername = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                /*Circle()
                    .scale(1.2)
                    .foregroundColor(.white)*/
                Text("⛳️")
                    .font(.system(size: 300))
                    .padding(.bottom, 300)
            
                
                VStack {
                    Text("Golf Stream")
                        .font(.largeTitle)
                        .bold()
                        .fontWeight(.bold)
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $UserName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(WrongUsername))
                    SecureField("Password", text: $Password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(WrongPassword))
                    
                    Button("Login"){
                        authenticateUser(UserName: UserName, Password: Password)
                    }
                    
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    
                    .sheet(isPresented: $showingLoginScreen) {
                        Text("Welcome \(UserName)")
                    }
                    Button("New User"){
                        
                    }
                    .foregroundColor(.black.opacity(0.90))
                    .padding(.top,35 )
                }
                
                    
                       
                    
                        
                    
                }
            }
            .navigationBarHidden(true)
        }
        
        
       
    
    func authenticateUser(UserName : String, Password: String){
        if UserName.lowercased() == "clphillips10"{
            WrongUsername = 0
            if Password == "Phillips32"{
                WrongPassword = 0
                showingLoginScreen = true
            }
            else{
                WrongPassword = 2
            }
        }else{
                WrongUsername = 2
            }
            }
        }
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
