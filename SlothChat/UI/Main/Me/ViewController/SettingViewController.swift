//
//  SettingViewController.swift
//  SlothChat
//
//  Created by Fly on 16/10/17.
//  Copyright © 2016年 ssloth.com. All rights reserved.
//

import UIKit
import AwesomeCache
import PKHUD

class SettingViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    let dataSource = SettingObj.getSettingList()
    let tableView = UITableView(frame: CGRect.zero, style: .plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "设置"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = .none
        tableView.rowHeight = 74
        view.addSubview(tableView)
        tableView.register(SettingCell.self, forCellReuseIdentifier: "SettingCell")
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsets.zero)
        }
        
        let screenWidth = UIScreen.main.bounds.size.width
        
        let footerView = UIView(frame: CGRect.init(x: 0, y: 0, width: screenWidth, height: 100))
        let exitButton = UIButton(type: .custom)
        exitButton.layer.cornerRadius = 22
        exitButton.setTitle("退出", for: .normal)
        exitButton.backgroundColor = SGColor.SGMainColor()
        exitButton.addTarget(self, action: #selector(exitButtonClick), for: .touchUpInside)
        footerView.addSubview(exitButton)
        exitButton.snp.makeConstraints { (make) in
            make.left.lessThanOrEqualTo(80)
            make.right.greaterThanOrEqualTo(-80)
            make.top.equalTo(40)
            make.height.equalTo(44)
        }
        tableView.tableFooterView = footerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SettingCell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
        let settingObj = dataSource[indexPath.row]
        cell.configCellWithObj(settingObj: settingObj)
        if indexPath.row == 0 || indexPath.row == 4 {
            cell.accessoryType = .disclosureIndicator
            cell.selectionStyle = .default
        }else{
            cell.accessoryType = .none
            cell.selectionStyle = .none
        }
        cell.selectButton.isHidden = !(indexPath.row == 1 || indexPath.row == 2)
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        var pushVC : UIViewController?
        if indexPath.row == 0 {
            pushVC = ModifyPasswordViewController()
        }else if indexPath.row == 4{
            pushVC = AboutUsViewController()
        }else if indexPath.row == 3{
            charge()
            return
        }
        
        if let pushVC = pushVC {
            self.navigationController?.pushViewController(pushVC, animated: true)
        }
    }
    
    //Mark:- Action
    
    func charge() {
        self.showCustomDialog()
    }
    
    func showCustomDialog() {
        let ratingVC = RatingViewController(nibName: "RatingViewController", bundle: nil)
        let popup = PopupDialog(viewController: ratingVC, buttonAlignment: .horizontal, transitionStyle: .bounceDown, gestureDismissal: true)
        let buttonOne = CancelButton(title: "取消") {
        }
        buttonOne.titleColor = SGColor.black
        let buttonTwo = DefaultButton(title: "确定") {
            let price = ratingVC.textField.text
            if (price?.isEmpty)!{
                return
            }
            if let price = price{
                self.purchaseForProduct(price: price)
            }
        }
        buttonTwo.titleColor = SGColor.SGMainColor()
        popup.addButtons([buttonOne, buttonTwo])
        present(popup, animated: true, completion: nil)
    }
    
    func exitButtonClick() {
        
        let alertController = UIAlertController(title: "是否退出树懒", message: "", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler:nil)
        let okAction = UIAlertAction(title: "退出", style: .default, handler:{ (action) in
            self.logout()
        })
        okAction.setValue(SGColor.SGMainColor(), forKey: "_titleTextColor")
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    //MARK:- Network
    
    func logout() {
        let engine = NetworkEngine()
        HUD.show(.labeledProgress(title: nil, subtitle: nil))
        
        engine.postAuthLogout() { (response) in
            HUD.hide()
            if response?.status == ResponseError.SUCCESS.0{
                Global.shared.logout()
                RCIM.shared().disconnect(false)
                NotificationCenter.default.post(name: SGGlobalKey.LoginStatusDidChange, object: nil)
            }else{
                HUD.flash(.label(response?.msg), delay: 2)
            }
        }
    }
}
