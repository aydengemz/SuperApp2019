//
//  MovieList.swift
//  MoviesApp
//
//  Created by Pedro Valentini on 25/08/18.
//  Copyright © 2018 Pedro Valentini. All rights reserved.
//

import Foundation

struct PeopleList: Decodable {
    
    //var page: Int
    //var total_pages: Int
    //var total_results: Int
    var results: [People]
    
    static func initWith(data: Data) -> PeopleList? {
        do {
            return try JSONDecoder().decode(self, from: data)
        }catch let error {
            print(error)
            return nil
        }
    }
    
}
