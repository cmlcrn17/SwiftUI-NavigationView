//
//  Giris.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 24.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct GirisNav1: View {
    var body: some View {
        
        NavigationView{
            Giris1()
        }
        /*Navigation View Sonu**/
    }
}

struct Giris1: View {
    
    @State var aktifMi : Bool = false
    @State var oturumAc : Bool = false
    
    var body: some View {
        VStack{
            
            Button(action: {
                self.oturumAc = true
            }){
                Text("Oturum Aç")
                    .bold()
                    .font(.system(size: 20))
            }
            
            NavigationLink(destination: OturumAc1(anaSayfaAktifMi: self.$aktifMi), isActive: self.$oturumAc){
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
}

struct Giris1_Previews: PreviewProvider {
    static var previews: some View {
        GirisNav1()
    }
}
