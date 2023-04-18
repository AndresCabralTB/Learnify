//
//  Settings.swift
//  Learnify
//
//  Created by Andres Cabral on 17/04/23.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        
        ScrollView{
            
            Text("These are the settings ")
            
        }.navigationBarTitle("Settings", displayMode: .inline)
        
    }
}
    
    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
        }
    }

