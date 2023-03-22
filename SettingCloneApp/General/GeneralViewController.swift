//
//  GeneralViewController.swift
//  SettingCloneApp
//
//  Created by 이송은 on 2023/03/14.
//

import UIKit

class GeneralViewController: UIViewController {

    var model = [[GeneralModel]]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.title = "General"
        
        self.view.backgroundColor = UIColor(white: 0.9, alpha: 1)
        tableView.backgroundColor = UIColor(white: 0.9, alpha: 1)
        
        self.navigationController?.navigationBar.prefersLargeTitles = false
        makeData()
    }

    func makeData(){
        model.append([GeneralModel(leftTitle: "About")])
        model.append(
            [
                GeneralModel(leftTitle: "Keyboard"),
                GeneralModel(leftTitle: "Game Controller"),
                GeneralModel(leftTitle: "Fonts"),
                GeneralModel(leftTitle: "Language & Region"),
                GeneralModel(leftTitle: "Dictionary"),
            ]
        )
        
        model.append([GeneralModel(leftTitle: "Reset")])

        
                      
                      
    }
}

extension GeneralViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralCell", for: indexPath) as? GeneralCell else {
            return UITableViewCell()
        }
        cell.leftLabel.text = model[indexPath.section][indexPath.row].leftTitle
        return cell
    }
    
    
}

class GeneralCell : UITableViewCell {
    @IBOutlet weak var leftLabel : UILabel!
    @IBOutlet weak var rightImage : UIImageView! {
        didSet{
            rightImage.image = UIImage(systemName: "chevron.right")
        }
    }
    
}
