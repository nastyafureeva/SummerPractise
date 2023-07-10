//
//
//import UIKit
//
//
// class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    
//    @IBOutlet weak var tableView: UITableView!
//    
//    private let password = "123"
//    
//    private let data: [ListTableViewData] = [
//        ListTableViewData(title: "123", image: .actions),
//        ListTableViewData(title: "321", image: .actions),
//        ListTableViewData(title: "345", image: .actions),
//        ListTableViewData(title: "567", image: .actions),
//        ListTableViewData(title: "754", image: .actions),
//        ListTableViewData(title: "123", image: .actions),
//        ListTableViewData(title: "324", image: .actions),
//        ListTableViewData(title: "978", image: .actions),
//        ListTableViewData(title: "789", image: .actions),
//        ListTableViewData(title: "12563", image: .actions),
//        ListTableViewData(title: "576", image: .actions)
//    ]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        tableView.dataSource = self
//        tableView.delegate = self
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let title = data[indexPath.row].title
//
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        100
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        data.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as? ListTableViewCell
//        else { return UITableViewCell() }
//        
//        cell.setUp(data[indexPath.row])
//        
//        return cell
//    }
//}
