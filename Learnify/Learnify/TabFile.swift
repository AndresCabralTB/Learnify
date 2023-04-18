//
//  TabFile.swift
//  Learnify
//
//  Created by Andres Cabral on 17/04/23.
//

import SwiftUI

struct TabFile: View {
    var body: some View {
        
        TabView{
            NavigationView{
                MainMenu()
                .tabItem(){
                    Text("Menu")
                    Image(systemName: "house")
                }
            }
            
            
            NavigationView{
                Settings()
                .tabItem(){
                    Text("Settings")
                    Image(systemName: "gear")
                }
                
            }
        }
    }
}

    struct TabFile_Previews: PreviewProvider {
        static var previews: some View {
            TabFile()
        }
    }

