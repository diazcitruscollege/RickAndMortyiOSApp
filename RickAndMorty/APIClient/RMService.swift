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
    ///   - type: The type of object we expcect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type
        completion: @escaping (Result<T, Error>) -> Void
    ) {
    
    }
}
