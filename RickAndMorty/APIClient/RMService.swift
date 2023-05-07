//
//  RMService.swift
//  RickAndMorty
//
//  Created by Maria Diaz on 5/6/23.
//


import Foundation
/// Primary API service object to get Rick and Morty data
final class RMService {
    ///Shared singleton instance
    static let shared = RMService()
    
    ///Privatetized constructor
    private init() {}

    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
    
    }
}
