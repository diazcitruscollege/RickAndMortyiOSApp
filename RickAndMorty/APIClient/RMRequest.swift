//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Maria Diaz on 5/6/23.
//

import Foundation
import UIKit

/// Object that represents a singleton API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
        
    }
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API if anny
    private let pathComponents: Set<String>
    
    /// Query args for API if any
    private let queryParameters: [URLQueryItem]

    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
            
        }
        
        return string
    }
    /// computerd and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    /// Construct request
    ///  - endpoint: Target endpoint
    ///  - path components: Collection of path components
    ///  - queryparameters: Collection of query parameters
    
    
    public init(endpoint: RMEndpoint,
         pathComponents : Set<String> = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
