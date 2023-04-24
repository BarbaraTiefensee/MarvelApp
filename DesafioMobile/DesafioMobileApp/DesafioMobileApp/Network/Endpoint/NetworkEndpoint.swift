//
//  NetworkEndpoint.swift
//  DesafioMobileApp
//
//  Created by Bárbara Tiefensee on 31/01/23.
//

import Foundation

protocol NetworkEndpoint {
    var baseURL: URLComponents { get }
    var path: String { get }
}

extension NetworkEndpoint {
    var baseURL: URLComponents {
        guard let url = URLComponents(string: NetworkConstant.baseURL) else {
            fatalError("Could not parse baseURL")
        }
        return url
    }
}
