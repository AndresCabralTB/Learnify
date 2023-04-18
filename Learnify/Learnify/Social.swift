//
//  Social.swift
//  Learnify
//
//  Created by Andres Cabral on 14/04/23.
//

import SwiftUI

struct Social: View {
    
    var body: some View {
        
        ScrollView{
            
            Text("This is the social page")
            
        }.navigationBarTitle("Social", displayMode: .inline)
        
    }
}

struct Social_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
