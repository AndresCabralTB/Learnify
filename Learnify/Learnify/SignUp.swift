//
//  SignUp.swift
//  Learnify
//
//  Created by Andres Cabral on 15/04/23.
//

import SwiftUI

struct SignUp: View {
    
    @State private var selection = 0
    @State private var phoneNumber: String = ""
    @State private var emailAddress: String = ""
    
    @State private var loginScreen = true
    
    
    var body: some View {
        
        
        NavigationStack{
            
        VStack{
            ZStack{
                
                Color(red: 161.0/255.0, green: 161.0/255.0, blue: 161.0/255.0)
                    .edgesIgnoringSafeArea(.all)
                    .navigationBarBackButtonHidden(true)
                
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(100)
                    .frame(height: 200, alignment: .bottom)
                    .colorMultiply(Color(red: 63.0/255.0, green: 158.0/255.0, blue: 225.0/255.0))
                    
                
                VStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 210, height: 210)
                    
                        .padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 275, height: 400)
                        
                        VStack{
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(Color.gray)
                                
                                HStack{
                                    ZStack{
                                        NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true),
                                                       label: {
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 30)
                                                    .fill(Color.gray)
                                                    .frame(width: 120, height: 40)
                                                    
                                                Text("Log In")
                                                    .foregroundColor(Color.white)
                                            }
                                        })
                                    }
                                    
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 30)
                                                .fill(color1)
                                                .frame(width: 130, height: 40)
                                            
                                            Text("Sign Up")
                                                .foregroundColor(Color.white)
                                        }
                                    
                                    
                                    
                                }
                                
                            }
                            .padding()
                            Text("Sign-Up to Learnify").font(.custom("San Fransico", size: 20).bold())
                            
                                                        
                            HStack{
                                VStack{
                                    TextField("Phone Number", text: $phoneNumber)
                                        .textFieldStyle(CustomTextFieldStyle())
                                    TextField("E-Mail Address", text: $emailAddress)
                                        .textFieldStyle(CustomTextFieldStyle())
                                }
                                    .frame(width: 200)
                                    .padding(.horizontal, 20)
                            }
                            .padding(.vertical, 10)
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(color1)
                                    .frame(width: 200, height: 50)
                                
                                Text("Continue with Facebook").font(.custom("Arial", size: 15).bold()).foregroundColor(Color.white)
                            }
                            .padding(-5)
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.red)
                                    .frame(width: 200, height: 50)
                                
                                Text("Continue with Google").font(.custom("Arial", size: 15).bold()).foregroundColor(Color.white)
                            }
                            .padding(10)
                            
                            
                        }
                       
                    }
                }
                
                }
            
            
            }
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
//New textfield style

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color.gray, lineWidth: 1)
            )
    }
}
