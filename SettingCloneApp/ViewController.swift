//
//  ViewController.swift
//  SettingCloneApp
//
//  Created by 이송은 on 2023/03/13.
//

import UIKit

class ViewController: UIViewController {
    
    var settingModel = [[SettingModel]]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
        tableView.register(UINib(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
        tableView.backgroundColor = UIColor(white: 0.9, alpha: 1)
        makeData()
        self.title = "Settings"
        self.view.backgroundColor = UIColor(white: 0.9, alpha: 1)
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func makeData(){
        settingModel.append(
            [SettingModel(leftImageName: "person.circle",menuTitle: "Sign into your iPhone", subTitle: "Set up iCloud, the App Store, and more.", rightImageName: "chevron.right")]
        )
        
        settingModel.append(
        [SettingModel(leftImageName: "gear",menuTitle: "Gerneral", subTitle: nil, rightImageName: "chevron.right"),
        SettingModel(leftImageName: "person.fill",menuTitle: "Accessibility", subTitle: nil, rightImageName: "chevron.right"),
        SettingModel(leftImageName: "hand.raised.fill",menuTitle: "Privacy", subTitle: nil, rightImageName: "chevron.right")]
        )
        
        settingModel.append(
            [SettingModel(leftImageName: "person.circle",menuTitle: "Password", subTitle: "nil", rightImageName: "chevron.right")]
        )
        
        settingModel.append(
            [
                SettingModel(leftImageName: "person.circle",menuTitle: "Safari", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "News", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "Transration", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "Maps", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "Health Center", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "Siri", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "Photo", subTitle: "nil", rightImageName: "chevron.right"),
                SettingModel(leftImageName: "person.circle",menuTitle: "Game Center", subTitle: "nil", rightImageName: "chevron.right")
            ]
        )
    }

}


extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingModel[section].count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as? ProfileCell else{
                return UITableViewCell()
            }
            cell.firstLabel.text = settingModel[indexPath.section][indexPath.row].menuTitle
            cell.profileImage.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
            cell.secondLabel.text = settingModel[indexPath.section][indexPath.row].subTitle
            
            return cell
        }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as? MenuCell else{
            return UITableViewCell()
        }
        cell.leftImage.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].leftImageName)
        cell.rightImage.image = UIImage(systemName: settingModel[indexPath.section][indexPath.row].rightImageName ?? "")
        cell.middleTitleLabel.text = settingModel[indexPath.section][indexPath.row].menuTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 && indexPath.row == 0{
            let VC = MyIDViewController(nibName: "MyIDViewController", bundle: nil)
            self.present(VC, animated: true)
        }
        else if indexPath.section == 1 && indexPath.row == 0{
            if let VC = UIStoryboard(name: "General", bundle: nil).instantiateViewController(identifier: "General") as? GeneralViewController{
                self.navigationController?.pushViewController(VC, animated: true)
            }
        }
    }

}
