//
//  UserInfoView.swift
//  SlothChat
//
//  Created by fly on 2016/10/19.
//  Copyright © 2016年 ssloth.com. All rights reserved.
//

import UIKit

typealias EditUserInfoType = () -> Void

class UserInfoView: BaseView {
    let nameLabel = UILabel()
    let sexImgView = UIImageView()
    let ageInfoLabel = UILabel()
    
    let locationView = UserInfoSingleView()
    let hauntView = UserInfoSingleView()
    let schoolView = UserInfoSingleView()
    let editView = UIView()
    
    var userObj: UserObj?
    
    var editUserInfoValue:EditUserInfoType?

    override init(frame: CGRect ){
        super.init(frame: frame)
        sentupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sentupView() {
        nameLabel.font = UIFont.systemFont(ofSize: 16)
        addSubview(nameLabel)
        addSubview(sexImgView)
        ageInfoLabel.font = UIFont.systemFont(ofSize: 14)
        addSubview(ageInfoLabel)
        
        locationView.titleLabel.textColor = SGColor.SGTextColor()
        locationView.configInputView(titleStr: "所在地:", contentStr: "")
        addSubview(locationView)
        
        hauntView.titleLabel.textColor = SGColor.SGTextColor()
        hauntView.configInputView(titleStr: "经常:", contentStr: "")
        addSubview(hauntView)
        
        schoolView.titleLabel.textColor = SGColor.SGTextColor()
        schoolView.configInputView(titleStr: "学校:", contentStr: "")
        addSubview(schoolView)
        
        nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.top.equalTo(0)
            make.right.lessThanOrEqualTo(-65)
        }
        sexImgView.snp.makeConstraints { (make) in
            make.left.equalTo(nameLabel.snp.right).offset(14)
            make.bottom.equalTo(nameLabel.snp.bottom)
            make.size.equalTo(CGSize.init(width: 14, height: 14))
        }
        ageInfoLabel.snp.makeConstraints { (make) in
            make.left.equalTo(nameLabel.snp.left)
            make.top.equalTo(nameLabel.snp.bottom).offset(16)
        }
        
        locationView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(ageInfoLabel.snp.bottom).offset(12)
//            make.height.equalTo(34)
        }
        hauntView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(locationView.snp.bottom)
//            make.height.equalTo(34)
        }
        schoolView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(hauntView.snp.bottom)
//            make.height.equalTo(34)
        }
        
        let editImgView = UIImageView()
        editImgView.image = UIImage.init(named: "pen")
        editImgView.tintColor = SGColor.SGMainColor()
        let editLabel = UILabel()
        editLabel.text = "编辑"
        editLabel.font = UIFont.systemFont(ofSize: 15) 
        editLabel.textColor = SGColor.SGMainColor()
        
        let editButton = UIButton(type: .custom)
        editButton.addTarget(self, action: #selector(editButtonClick), for: .touchUpInside)
        addSubview(editView)
        editView.addSubview(editImgView)
        editView.addSubview(editLabel)
        editView.addSubview(editButton)
        
        editView.snp.makeConstraints { (make) in
            make.top.right.equalTo(0)
            make.size.equalTo(CGSize.init(width: 64, height: 46))
        }
        
        editImgView.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.centerY.equalTo(editView.snp.centerY)
            make.size.equalTo(CGSize.init(width: 15, height: 15))
        }
        
        editLabel.snp.makeConstraints { (make) in
            make.right.equalTo(-10)
            make.centerY.equalTo(editImgView.snp.centerY)
        }
        
        editButton.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsets.zero)
        }
    }
    
    func configViewWihObject(userObj: UserObj) {
        self.userObj = userObj
        
        nameLabel.text = userObj.name
        let sexName = (userObj.gender == .male ? "male" : "female")
        sexImgView.image = UIImage.init(named: sexName)
        
        let birthday = userObj.birthday.toYMDDate()
        let age = birthday?.toAgeString()
        let constellation = birthday?.toConstellationString()
        ageInfoLabel.text = age! + "，" + constellation!
        
        locationView.configContent(contentStr: userObj.location)
        hauntView.configContent(contentStr: userObj.haunt)
        schoolView.configContent(contentStr: userObj.school)
    }
    
    func setUserEntity(isMyself: Bool) {
        editView.isHidden = !isMyself
    }
    
    func setEditUserInfoValue(temClosure: @escaping EditUserInfoType){
        self.editUserInfoValue = temClosure
    }
    
    func editButtonClick() {
        print("editButtonClick")
        if let sp = self.editUserInfoValue {
            sp()
        }
    }

}