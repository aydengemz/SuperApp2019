//
//  Movie.swift
//  MoviesApp
//
//  Created by Pedro Valentini on 25/08/18.
//  Copyright © 2018 Pedro Valentini. All rights reserved.
//

/*
 {
 "gender": "female",
 "name": {
 "title": "mrs",
 "first": "cremilda",
 "last": "dias"
 },
 "location": {
 "street": "8953 rua tiradentes ",
 "city": "são luís",
 "state": "pará",
 "postcode": 47884,
 "coordinates": {
 "latitude": "-72.5055",
 "longitude": "162.9507"
 },
 "timezone": {
 "offset": "+2:00",
 "description": "Kaliningrad, South Africa"
 }
 },
 "email": "cremilda.dias@example.com",
 "login": {
 "uuid": "2578ede9-673b-45c6-bde0-204a5ef7e1e1",
 "username": "angrycat155",
 "password": "tootie",
 "salt": "BlTuWAoZ",
 "md5": "3ebc55eb1d01eb550756bdfecd95d1c5",
 "sha1": "f4e40f7f39999de83eac02837f74f70ac3071d6c",
 "sha256": "3dc7fa7cf837b4d6ba5139e5a507b514c396cb0d0c07f8a47393b4d83c67834e"
 },
 "dob": {
 "date": "1958-05-04T06:16:34Z",
 "age": 60
 },
 "registered": {
 "date": "2012-08-15T16:32:23Z",
 "age": 6
 },
 "phone": "(89) 4919-1398",
 "cell": "(58) 9841-2908",
 "id": {
 "name": "",
 "value": null
 },
 "picture": {
 "large": "https://randomuser.me/api/portraits/women/31.jpg",
 "medium": "https://randomuser.me/api/portraits/med/women/31.jpg",
 "thumbnail": "https://randomuser.me/api/portraits/thumb/women/31.jpg"
 },
 "nat": "BR"
 },
 */



import Foundation

struct People: Decodable  {
    
    var email: String?
    var gender: String?
    var phone: String?
    var nat: String?
    var picture: Pic?
    var name: Name?
    var location: Location?
}
struct Name: Decodable  {
    
    var title: String = ""
    var first: String = ""
    var last: String = ""
}
struct Location: Decodable {
    var street: String?
    var city: String?
    var state: String?
    var postCode: Int?
}
struct Pic: Decodable {
    var large: String?
    var medium: String?
    var thumbnail: String?
}

