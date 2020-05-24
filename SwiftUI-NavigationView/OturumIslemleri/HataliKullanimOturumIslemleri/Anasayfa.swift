//
//  Anasayfa.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 24.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct Anasayfa: View {
    
    @Binding var anaSayfaGoster : Bool
    
    @State var isim : String = ""
    @State var detay : Bool = false
    @State var giris : Bool = false
    
    func getIsim() -> Void{
        
        let prefs = UserDefaults.standard
        self.isim = prefs.string(forKey: "NAME")!
    }
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Text("Hoşgeldin \(self.isim)")
                
                Button (action: {
                    
                    let prefs = UserDefaults.standard
                    prefs.set("", forKey: "NAME")
                    
                    prefs.removeObject(forKey: "NAME")
                    prefs.synchronize()
                    
                    self.giris = true
                    
                    
                })
                {
                    Text("Oturumu Kapat")
                    
                }
                
                NavigationLink(destination: Giris(), isActive: self.$giris){
                    Text("")
                }
                
                NavigationLink(destination: Detay(), isActive: self.$detay){
                    Text("")
                }
            }
                /*VStack Sonu*/
                .onAppear(perform: getIsim)
                .navigationBarItems(leading:
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://www.google.com")!)
                    }) {
                        Text("Google")
                            .bold()
                    },
                                    
                                    trailing: Button(action: {
                                        self.detay = true
                                    }) {
                                        
                                        Image(systemName: "star.fill")
                                            .imageScale(.large)
                })
        }
        
        
    }
}

