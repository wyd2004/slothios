//
//  PublishHeaderView.swift
//  SlothChat
//
//  Created by Fly on 16/10/23.
//  Copyright © 2016年 ssloth.com. All rights reserved.
//

import UIKit

typealias PublishAdvertClosureType = () -> Void

class PublishHeaderView: BaseView {
    let mainImgView = UIImageView()
    
    let selectButton = UIButton(type: .custom)
    
    let contentLabel = UILabel()
    let priceView = UIView()
    let priceLabel = UILabel()
    
    let pickerView = ValuePickerView.init()
    
    var selectPassValue: PublishAdvertClosureType?
    var price = 1{
        didSet{
            
            let string1 = "当前竞争额    "
            let string2 = "￥" + String(price)
            let attributedText = NSMutableAttributedString.init(string: string1 + string2)
            priceLabel.attributedText = attributedText
            
            let range = NSRange.init(location: string1.characters.count, length: string2.characters.count)
            attributedText.addAttribute(NSForegroundColorAttributeName, value: SGColor.SGBlueColor(), range: range)
            attributedText.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 15), range: range)

        }
    }
    
    var isJoin = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sentupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func sentupView() {
        
        addSubview(mainImgView)
        addSubview(contentLabel)
        
        let joinView = UIView()
        addSubview(joinView)
        
        let biddingLabel = UILabel()
        contentLabel.font = UIFont.systemFont(ofSize: 15)

        biddingLabel.text = "是否用此图片参与广告竞价"
        joinView.addSubview(biddingLabel)
        
        selectButton.setBackgroundImage(UIImage.init(named: "selno"), for: .normal)
        selectButton.setBackgroundImage(UIImage.init(named: "selno"), for: .highlighted)
        selectButton.setBackgroundImage(UIImage.init(named: "selyes"), for: .selected)
        selectButton.addTarget(self, action: #selector(selectButtonCLick), for: .touchUpInside)
        addSubview(selectButton)
        
        contentLabel.numberOfLines = 0
        contentLabel.lineBreakMode = .byCharWrapping
        let w = UIScreen.main.bounds.width
        contentLabel.preferredMaxLayoutWidth = w - 8 * 2
        contentLabel.font = UIFont.systemFont(ofSize: 14)
        contentLabel.textColor = SGColor.SGTextColor()
        contentLabel.text = "什么是广告位\n您可以支付一定金额参与图片的广告位竞价。若在截止时间您出价最高，则竞价成功。您将获得图片分享首页广告位一周时间。"
        
        mainImgView.snp.makeConstraints { (make) in
            make.left.top.right.equalTo(0)
            make.height.equalTo(300)
        }
        
        joinView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(mainImgView.snp.bottom).offset(24)
            make.height.equalTo(44)
        }
        
        biddingLabel.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.centerY.equalTo(joinView.snp.centerY)
        }
        
        selectButton.snp.makeConstraints { (make) in
            make.right.equalTo(-8)
            make.centerY.equalTo(joinView.snp.centerY)
            make.size.equalTo(CGSize.init(width: 70, height: 40))
        }
        
        contentLabel.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.right.equalTo(-8)
            make.top.equalTo(joinView.snp.bottom).offset(24)
        }
        
        addSubview(priceView)
        priceView.snp.makeConstraints { (make) in
            make.left.right.equalTo(0)
            make.top.equalTo(joinView.snp.bottom).offset(24)
            make.height.equalTo(44)
        }
        configPriceView()
        configPickerView()
    }
    
    func configPriceView() {
        priceView.isHidden = true
        
        let string1 = "当前竞争额    "
        let attributedText = NSAttributedString.init(string: string1 + "￥1")
        priceLabel.attributedText = attributedText
        
        priceView.addSubview(priceLabel)
        
        let overweightButton = UIButton(type: .custom)
        overweightButton.addTarget(self, action: #selector(overweightButtonClick), for: .touchUpInside)

        overweightButton.setTitle("加码", for: .normal)
        overweightButton.setTitleColor(UIColor.white, for: .normal)
        overweightButton.backgroundColor = SGColor.SGMainColor()
        overweightButton.layer.cornerRadius = 20
        priceView.addSubview(overweightButton)
        
        priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.centerY.equalTo(priceView.snp.centerY)
        }
        
        overweightButton.snp.makeConstraints { (make) in
            make.right.equalTo(-8)
            make.centerY.equalTo(priceView.snp.centerY)
            make.size.equalTo(CGSize.init(width: 64, height: 40))
        }
    }
    
    func configPickerView() {
        pickerView.pickerTitle = "加码金额"
        let completionBlock: (String?) -> Void = {(_ value: String?) in
            SGLog(message: value)
            
            self.price += Int(value!.components(separatedBy: "/").first!)!
        }
        pickerView.valueDidSelect = completionBlock
        pickerView.dataSource = ["1","5","10","50","100","500","1000"]
    }
    
    //MARK:- Action

    func selectButtonCLick() {
        selectButton.isSelected = !selectButton.isSelected
        priceView.isHidden = !selectButton.isSelected
        contentLabel.isHidden = selectButton.isSelected
        
        isJoin = selectButton.isSelected
        
        if selectButton.isSelected {
            selectButton.setBackgroundImage(UIImage.init(named: "selyes"), for: .highlighted)
        }else{
            selectButton.setBackgroundImage(UIImage.init(named: "selno"), for: .highlighted)
        }
        
        if let sp = self.selectPassValue {
            sp()
        }
    }
    
    func configWithObject(image: UIImage) {
        
        self.mainImgView.image = image
    }
    
    func overweightButtonClick() {
        pickerView.show()
    }
    
    func setClosurePass(temClosure: @escaping PublishAdvertClosureType){
        self.selectPassValue = temClosure
    }
    
}