//
//  WebService.swift
//  Deprem_Api_SwiftUI
//
//  Created by Mert Ala on 19.02.2020.
//  Copyright © 2020 Mert Ala. All rights reserved.
//

import Foundation

class NetworkingManager: ObservableObject {
    
    @Published var earthQuakeList = EarthQuakeAPIList(features: [])
    
    init() {
        guard let url = URL(string: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson") else {return}
        URLSession.shared.dataTask(with: url){
            (data, _, _) in
            guard let data = data else {return}
            let earthQuakeList = try!
                JSONDecoder().decode(EarthQuakeAPIList.self, from: data)
           
            
            
            
            DispatchQueue.main.async {
                self.earthQuakeList = earthQuakeList
                print("data")
              
            }
        }.resume()
    }
}
