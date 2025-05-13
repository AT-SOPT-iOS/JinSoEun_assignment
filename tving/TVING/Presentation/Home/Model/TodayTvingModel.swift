//
//  TodayTvingModel.swift
//  TVING
//
//  Created by 쏘 on 5/2/25.
//

import UIKit

struct TodayTvingModel {
  let ranking: String
  let thumbnail: UIImage
}

extension TodayTvingModel {
  static func dummy() -> [TodayTvingModel] {
    return [
      TodayTvingModel(ranking: "1", thumbnail: .poster1),
      TodayTvingModel(ranking: "2", thumbnail: .poster2),
      TodayTvingModel(ranking: "3", thumbnail: .poster3),
      TodayTvingModel(ranking: "4", thumbnail: .poster4),
      TodayTvingModel(ranking: "5", thumbnail: .poster5),
      TodayTvingModel(ranking: "6", thumbnail: .poster6),
      TodayTvingModel(ranking: "7", thumbnail: .poster7),
      TodayTvingModel(ranking: "8", thumbnail: .poster8),
      TodayTvingModel(ranking: "9", thumbnail: .poster9),
      TodayTvingModel(ranking: "10", thumbnail: .poster10),
      TodayTvingModel(ranking: "11", thumbnail: .poster1),
      TodayTvingModel(ranking: "12", thumbnail: .poster2),
      TodayTvingModel(ranking: "13", thumbnail: .poster3),
      TodayTvingModel(ranking: "14", thumbnail: .poster4),
      TodayTvingModel(ranking: "15", thumbnail: .poster5),
      TodayTvingModel(ranking: "16", thumbnail: .poster6),
      TodayTvingModel(ranking: "17", thumbnail: .poster7),
      TodayTvingModel(ranking: "18", thumbnail: .poster8),
      TodayTvingModel(ranking: "19", thumbnail: .poster9),
      TodayTvingModel(ranking: "20", thumbnail: .poster10),
    ]
  }
}
