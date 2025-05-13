//
//  NetworkService.swift
//  TVING
//
//  Created by 쏘 on 5/13/25.
//

import Foundation

final class PeopleListService {
    static let shared = PeopleListService()
    private init() {}

    private let apiKey = "de6cd4fee71141e25d7289823296d906"

    func fetchPeopleList(request: PeopleListRequest, completion: @escaping (Result<[People], NetworkError>) -> Void) {
        var urlString = "https://kobis.or.kr/kobisopenapi/webservice/rest/people/searchPeopleList.json?key=\(apiKey)&itemPerPage=30"

        if let name = request.peopleName?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            urlString += "&peopleNm=\(name)"
        }

        guard let url = URL(string: urlString) else {
            return completion(.failure(.invalidURL))
        }

        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let _ = error {
                return completion(.failure(.requestFailed))
            }

            guard let data = data else {
                return completion(.failure(.noData))
            }

            do {
                let decoded = try JSONDecoder().decode(PeopleListResponse.self, from: data)
                completion(.success(decoded.peopleListResult.peopleList))
            } catch {
                completion(.failure(.decodingFailed))
            }
        }

        task.resume()
    }
}
