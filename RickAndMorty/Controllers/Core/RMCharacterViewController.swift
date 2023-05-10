//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Maria Diaz on 5/6/23.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
            URLQueryItem(name: "status", value: "alivename=rick&status=alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self { result in
            
        }
    }
    
    

}
