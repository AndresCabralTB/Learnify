//
//  Diana.swift
//  Learnify
//
//  Created by Andres Cabral on 17/04/23.
//

import SwiftUI

struct Diana: View {
    var body: some View {
        VStack{
            Image("Diana")
                .padding(-10)
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color.black)
                    
                    Text("Eres el amor de mi vida y te juro que quiero compartir todos mis logros contigo, quiero verte todos los dias y darte todo mi amor hasta que mi corazon no lata mas. Solo espero que tu sientas lo mismo y así podamos darle todo nuestro esfuerzo y cumplir nuestros sueño, juntos. Te amo mucho mi amor <3")
                        .foregroundColor(Color.red)
                        .bold()
                        .frame(height: 170)
                }
            }
            Image("Diana2").padding(.top, -10)
            
        }
    }
}

struct Diana_Previews: PreviewProvider {
    static var previews: some View {
        Diana()
    }
}
