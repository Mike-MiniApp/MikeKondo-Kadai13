//
//  ViewController.swift
//  MikeKondo-Kadai13
//
//  Created by 近藤米功 on 2022/08/30.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - UI Parts
    @IBOutlet private weak var fruitTableView: UITableView!

    let fruits = [Fruit(name: "りんご", isCheck: false),
                  Fruit(name: "みかん", isCheck: true),
                  Fruit(name: "バナナ", isCheck: false),
                  Fruit(name: "パイナップル", isCheck: true)]

    override func viewDidLoad() {
        super.viewDidLoad()
        fruitTableView.delegate = self
        fruitTableView.dataSource = self
        fruitTableView.register(UINib(nibName: FruitTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: FruitTableViewCell.identifier)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FruitTableViewCell.identifier, for: indexPath) as? FruitTableViewCell else { fatalError("The dequeued cell is not instance") }
        cell.fruit = fruits[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
