//
//  NetworkService.swift
//  NetworkInterchangable
//
//  Created by Enes Kaya on 30.08.2022.
//

import Foundation

protocol NetworkService {
    
    func download(_ resource: String) async throws -> [User]
    var type : String {get}
    
}
