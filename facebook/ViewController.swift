import UIKit

struct Data {
    var nameLabel: String
    var nameCaption: String
    var nameImage: String
}

/*class tableViewFacebook: UITableViewCell {
    
    @IBOutlet weak var imageFacebook: UIImageView!
    @IBOutlet weak var name: UILabel!
}*/
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tbvFacebook: UITableView!
    var data = [Data(nameLabel: "Nguyen Huy", nameCaption: "123",nameImage: "Image1"),Data(nameLabel: "2", nameCaption: "123",nameImage: "Image2"),Data(nameLabel: "3", nameCaption: "123",nameImage: "Image3"),Data(nameLabel: "4", nameCaption: "123",nameImage: "Image4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cellNib = UINib(nibName: "TableViewCell", bundle: nil)
        //let cellNib2 = UINib(nibName: "TableViewCell2", bundle: nil)
        tbvFacebook.register(cellNib, forCellReuseIdentifier: "cell3")
        self.tbvFacebook.delegate = self
        self.tbvFacebook.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! TableViewCell
        //let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! TableViewCell2
        let dataCell = data[indexPath.row]
        cell.imgImage.image = UIImage(named: dataCell.nameImage)
        cell.lbAcc.text = dataCell.nameLabel
        cell.lbCap.text = dataCell.nameCaption
        cell.btnAcc.setImage(UIImage(named: dataCell.nameImage), for: 	.application)
        cell.btnAcc.layer.cornerRadius = 20
        return cell
        
    }
}
