//
//  NetworkError.swift
//  TVING
//
//  Created by 쏘 on 5/13/25.
//

enum NetworkError: Error {
    case invalidURL
    case requestFailed
    case decodingFailed
    case noData
}

