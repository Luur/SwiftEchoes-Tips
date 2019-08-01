import UIKit

class ExampleTableViewCell: UITableViewCell {
}

extension UITableViewCell {
    static var identifier: String {
        return String(describing: self)
    }
}

let tableView = UITableView(frame: .zero)
tableView.register(ExampleTableViewCell.self, forCellReuseIdentifier: ExampleTableViewCell.identifier)
let cell = tableView.dequeueReusableCell(withIdentifier: ExampleTableViewCell.identifier)

print(ExampleTableViewCell.identifier)
