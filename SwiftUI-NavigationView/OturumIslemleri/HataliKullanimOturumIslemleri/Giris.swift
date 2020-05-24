//
//  Giris.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 24.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct Giris: View {
    
    @State var aktifMi : Bool = false
    @State var oturumAc : Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Button(action: {
                    self.oturumAc = true
                }){
                    Text("Oturum Aç")
                        .bold()
                        .font(.system(size: 20))
                }
                
                NavigationLink(destination: OturumAc(anaSayfaAktifMi: self.$aktifMi), isActive: self.$oturumAc){
                    Text("")
                }.isDetailLink(false)
                
            }.navigationBarBackButtonHidden(true)
                /*VStack Sonu*/
                .navigationBarItems(leading:
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://www.google.com")!)
                    }) {
                        Text("Google")
                            .bold()
                })
        }
        /*Navigation View Sonu*/
        
    }
}

struct Giris_Previews: PreviewProvider {
    static var previews: some View {
        Giris()
    }
}
