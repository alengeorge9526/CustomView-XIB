//
// customTableView.swift
//  customView
//
//  Created by Alen George on 08/09/23.
//

import UIKit

class customTableView: UITableViewCell {
    @IBOutlet weak var tableImage: UIImageView!
    @IBOutlet weak var tableLabel: UILabel!
    
static let id = "customTableView"
    static func nib() -> UINib{
        return UINib(nibName: "customTableView", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
     super.setSelected(selected, animated: animated)
    }
}
