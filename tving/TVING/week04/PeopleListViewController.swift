//
//  MovieAPIViewController.swift
//  TVING
//
//  Created by 쏘 on 5/13/25.
//

import UIKit

import SnapKit
import Then

final class PeopleListViewController: UIViewController {

    private let tableView = UITableView()
    private var peopleList: [People] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTableView()
        fetchData()
    }

    private func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false

        tableView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalToSuperview()
            
        }

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PeopleCell")
        tableView.dataSource = self
    }

    private func fetchData() {
        let request = PeopleListRequest(peopleName: nil)

        PeopleListService.shared.fetchPeopleList(request: request) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let people):
                    self?.peopleList = people
                    self?.tableView.reloadData()
                case .failure(let error):
                    print("Error:", error)
                }
            }
        }
    }
}

extension PeopleListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = peopleList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell", for: indexPath)

        cell.textLabel?.text = "👤 \(person.peopleNm) (\(person.repRoleNm))"
        return cell
    }
}
