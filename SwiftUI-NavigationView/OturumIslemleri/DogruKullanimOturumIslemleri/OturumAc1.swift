//
//  OturumAc.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 24.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct OturumAc1: View {
    
    @State private var txt_KullaniciAdi : String = ""
    @State private var txt_Parola : String = ""
    
    @Binding var anaSayfaAktifMi : Bool
    @State var anasayfa : Bool = false
    @State var alert : Bool = false
    
    var body: some View {
        VStack{
            
            VStack(alignment: .leading, spacing: 4){
                TextField("Kullanıcı Adı", text: self.$txt_KullaniciAdi)
                
                TextField("Parola", text: self.$txt_Parola)
                
            }.padding(.horizontal, UIScreen.main.bounds.width * 0.1)
            
            VStack(alignment: .trailing, spacing: 4){
                Button(action: {
                    
                    if(self.txt_KullaniciAdi == "Cmlcrn17" && self.txt_Parola == "1234"){
                        
                        let prefs = UserDefaults.standard
                        prefs.set(self.txt_KullaniciAdi, forKey: "NAME")
                        
                        self.anasayfa = true
                    }else{
                        self.alert = true
                    }
                    
                }){
                    
                    Text("Oturum Aç")
                    
                }
                .alert(isPresented: self.$alert) {
                    Alert(title: Text("Hata!"), message: Text("Hatalı kullanıcı adı veya parola girişi yaptınız."), dismissButton: .default(Text("Tamam")))}
            }.padding(.horizontal, UIScreen.main.bounds.width * 0.1)
            
            /*Buton Sonu*/
            
            
            NavigationLink(destination: Anasayfa1(anaSayfaGoster: self.$anaSayfaAktifMi), isActive: self.$anasayfa){
                Text("")
            }.isDetailLink(false)
        }.navigationBarHidden(true)
        /*VStack Sonu*/
        
    }
}


