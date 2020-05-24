//
//  Sayfa3.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 16.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct Sayfa3: View {
    @Binding var anaSayfaGoster : Bool
    
    var body: some View {
        VStack{
            
            Button (action:
                { self.anaSayfaGoster = false } )
            {
                Text("Sayfa 1 e dön")
                    .foregroundColor(Color.yellow)
                    .bold()
                    .font(.system(size: 20))
            }
            
        }
            /*VStack Sonu*/
            .background(Image("BackgroundImage")
                .aspectRatio(contentMode: .fill))
            
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        
    }
}

struct Sayfa3_Previews: PreviewProvider {
    static var previews: some View {
        Sayfa3(anaSayfaGoster: .constant(false))
    }
}
