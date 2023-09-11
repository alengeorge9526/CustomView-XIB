//
//  tableViewController.swift
//  customView
//
//  Created by Alen George on 08/09/23.
//

import UIKit

class tableViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    var Strings:[String] = ["apple","orange","mango","banana"]
    var images:[String] = ["apple","orange","mango","banana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register( customTableView.nib(), forCellReuseIdentifier: customTableView.id)
    }
}
extension tableViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Strings.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customTableView.id, for: indexPath) as! customTableView
        cell.tableLabel?.text = Strings[indexPath.row]
        let image = images[indexPath.row]
        cell.tableImage.image = UIImage(named: image)
        return cell
    }
}
extension tableViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let contentViewController = storyboard.instantiateViewController(withIdentifier: "tableCell")
        contentViewController.navigationItem.title = Strings[indexPath.row]
        navigationController?.pushViewController(contentViewController, animated: true)
        if let imageView = contentViewController.view.viewWithTag(123) as? UIImageView {
            let image = images[indexPath.row]
            imageView.image = UIImage(named: image)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
