//
//  Localservice.swift
//  NetworkInterchangable
//
//  Created by Enes Kaya on 30.08.2022.
//

import Foundation

class Localservice : NetworkService {
    var type: String = "Localservice"
    func download (_ resource : String) async throws -> [User]{
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            fatalError("resource not found")
        }
        
        let data  = try Data(contentsOf: URL(fileURLWithPath: path))
       return try JSONDecoder().decode([User].self, from: data)
    }
}
