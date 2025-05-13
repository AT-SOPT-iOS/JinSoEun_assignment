//
//  ResponseBody.swift
//  TVING
//
//  Created by 쏘 on 5/13/25.
//

import Foundation

struct PeopleListResponse: Codable {
    let peopleListResult: PeopleListResult
}

struct PeopleListResult: Codable {
    let peopleList: [People]
}

struct People: Codable {
    let peopleNm: String      // 이름
    let repRoleNm: String     // 대표 분야 (예: 감독, 배우 등)
}

