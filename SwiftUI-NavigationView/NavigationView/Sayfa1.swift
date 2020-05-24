//
//  ContentView.swift
//  SwiftUI-NavigationView
//
//  Created by Ceren on 16.05.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct Sayfa1: View {
    
    @State var aktifMi : Bool = false
    
    init() {
        UINavigationBar
            .appearance()
            .largeTitleTextAttributes = [
                .foregroundColor: UIColor.systemYellow,
                .font : UIFont(name:"Helvetica Neue", size: 22)!]
    }
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                NavigationLink(destination: Sayfa2(anaSayfaAktifMi: self.$aktifMi), isActive: self.$aktifMi){
                    
                    Text("Sayfa 2 ye git")
                        .foregroundColor(Color.yellow)
                        .bold()
                        .font(.system(size: 20))
                    
                }
                    /*Navigation Link Sonu*/
                    .accentColor( .yellow)
                
                
            }
                /*VStack Sonu*/
                .background(Image("BackgroundImage")
                    .aspectRatio(contentMode: .fill))
                
                .navigationBarItems(leading:
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://www.google.com")!)
                    }) {
                        Text("Google")
                            .font(.custom("SanFranciscoText-Light", size: 15))
                            .bold()
                            .foregroundColor(.yellow)
                    },
                                    
                                    trailing: Button(action: {
                                        self.aktifMi = true
                                    }) {
                                        
                                        Image(systemName: "star.fill")
                                            .imageScale(.large)
                                        /*
                                        Image(systemName: "book.circle")
                                        .imageScale(.large)
                                        */
                                        
                                        /*
                                        Image(systemName: "person")
                                        .imageScale(.large)
                                        */
                                        
                                        /*
                                        Text("Sayfa 2")
                                            .font(.custom("SanFranciscoText-Light", size: 15))
                                            .bold()
                                            .foregroundColor(.yellow)
                                        */
                })
        }
            /*Navigation View Sonu*/
            .accentColor( .yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Sayfa1()
    }
}
