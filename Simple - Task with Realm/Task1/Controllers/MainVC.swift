//
//  MainVC.swift
//  Task1
//
//  Created by Azimjon Abdurasulov on 28/10/22.
//

import RealmSwift
import UIKit

class MainVC: UIViewController {
    @IBOutlet var tableView: UITableView!

    var userList = [Users]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavItem()
        setupTV()
        getAllUser()
    }

    // MARK: - TableView setup

    func setupTV() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UserTVC.nib(), forCellReuseIdentifier: UserTVC.identifier)
    }

    // MARK: - Set Nav bar item

    func setNavItem() {
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItems = [add]
    }

    // MARK: - Tapped nav item

    @objc func addTapped() {
        let addUserVC = LoginVC(nibName: "LoginVC", bundle: nil)
        addUserVC.userType = .add
        addUserVC.delegate = self
        present(addUserVC, animated: true)
    }

    func getAllUser() {
        let userRealm = realm.objects(Users.self)
        for user in userRealm {
            userList.append(user)
        }
    }
}

// MARK: - UITableViewDelegate

extension MainVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let userView = LoginVC(nibName: "LoginVC", bundle: nil)
        userView.userType = .edit
        userView.delegate = self
        userView.userDM = userList[indexPath.row]
        userView.userIdex = indexPath.row
        present(userView, animated: true)
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let item = UIContextualAction(style: .destructive, title: "Delete") { _, _, _ in
            let userRealm = realm.objects(Users.self)
            let getUser = userRealm[indexPath.row]
            do {
                try realm.write {
                    realm.delete(getUser)
                    self.userList.removeAll()
                    self.getAllUser()
                    tableView.reloadData()
                }
            } catch let error as NSError {
                print("\(error)🤪")
            }
        }
        item.image = UIImage(systemName: "trash.fill")

        let swipeActions = UISwipeActionsConfiguration(actions: [item])

        return swipeActions
    }
}

// MARK: - UITableViewDataSource

extension MainVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTVC.identifier, for: indexPath) as? UserTVC else { return UITableViewCell() }

        cell.updateCell(users: userList[indexPath.row])

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension MainVC: DataReloadDelegate {
    func reloadData() {
        userList.removeAll()
        getAllUser()
        tableView.reloadData()
    }
}

protocol DataReloadDelegate {
    func reloadData()
}
