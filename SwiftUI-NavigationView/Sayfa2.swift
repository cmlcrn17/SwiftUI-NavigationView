//
//  Sayfa2.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 16.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct Sayfa2: View {
    
    @Binding var anaSayfaAktifMi : Bool
    
    @State private var gosterimDurumu = false
    @State private var goster = false
    @State private var gosterMesaj = false
    
    var body: some View {
        
        VStack{
            
            HStack(alignment: .center){
                
                Button(action: {
                    //Koşullarınız...
                    
                    if(self.gosterimDurumu){
                        
                        self.goster = true
                        self.anaSayfaAktifMi = true
                        
                    }else{
                        self.gosterMesaj = true
                    }
                    
                }){
                    Text("Sayfa 3 ye git")
                        .foregroundColor(Color.yellow)
                        .bold()
                        .font(.system(size: 20))
                }
                
                
                
                Toggle(isOn: $gosterimDurumu) {
                    Text("")
                }
                    /*Toogle Sonu*/
                    .foregroundColor(Color.yellow)
                    .frame(width: UIScreen.main.bounds.width * 0.2)
                
            }
            /*HStack Sonu*/
            
            
            NavigationLink(destination: Sayfa3(anaSayfaGoster: self.$anaSayfaAktifMi), isActive: self.$goster){
                Text("")
            }.isDetailLink(false)
            
        }
            /*VStack Sonu*/
            .background(Image("BackgroundImage")
                .aspectRatio(contentMode: .fill))
            
            .alert(isPresented: self.$gosterMesaj) {
                Alert(title: Text("Hata!"), message: Text("Sayfa gösterim durumunu aktifleştirmelisiniz."), dismissButton: .default(Text("Tamam")))}
        
    }
}

struct Sayfa2_Previews: PreviewProvider {
    static var previews: some View {
        Sayfa2(anaSayfaAktifMi: .constant(false))
    }
}
