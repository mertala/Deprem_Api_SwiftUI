//
//  ContentView.swift
//  Deprem_Api_SwiftUI
//
//  Created by Mert Ala on 19.02.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkingManager()
    var body: some View {
        
  
            NavigationView{
        List(networkingManager.earthQuakeList.features, id: \.properties){ datas in
            VStack(alignment: .leading){
            Text(datas.properties.place).font(.subheadline)
               
                    } .navigationBarTitle("Depremler",displayMode: .inline)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
