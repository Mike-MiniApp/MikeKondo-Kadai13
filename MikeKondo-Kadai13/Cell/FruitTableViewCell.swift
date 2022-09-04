//
//  FruitTableViewCell.swift
//  MikeKondo-Kadai13
//
//  Created by 近藤米功 on 2022/08/30.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    // MARK: - UI Parts
    @IBOutlet private weak var fruitNameLabel: UILabel!
    @IBOutlet private weak var checkImageView: UIImageView!

    static let identifier = "fruitCell"
    static let nibName = "FruitTableViewCell"

    var fruit: Fruit? {
        didSet {
            guard let fruit = fruit else { return }
            fruitNameLabel.text = fruit.name
            checkImageView.isHidden = !fruit.isCheck
        }
    }
}
