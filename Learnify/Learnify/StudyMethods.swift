//
//  StudyMethods.swift
//  Learnify
//
//  Created by Andres Cabral on 14/04/23.
//

import SwiftUI

struct StudyMethods: View {
    var body: some View {
        ScrollView{
            
            Text("These are the study methods")
            
        }.navigationBarTitle("Study Methods", displayMode: .inline)
        
    }
}


struct StudyMethods_Previews: PreviewProvider {
    static var previews: some View {
        StudyMethods()
    }
}
