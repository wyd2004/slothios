//
//  NetworkEngine.swift
//  SlothChat
//
//  Created by 王一丁 on 2016/10/18.
//  Copyright © 2016年 ssloth.com. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

struct ResponseError {
    static let SUCCESS = ("100", "成功")
    static let ERROR_AUTH_CODE = ("201", "token授权码错误")
    static let ERROR_SMS_CODE = ("202", "无效的短信验证码")
    static let USERNAMEE = ("203", "昵称重复/无效")
    static let EMAILE = ("204", "邮件重复/无效")
    static let AUTH_FAILURE = ("205", "登录验证错误，无效的手机号码和密码组合")
    static let NOT_EXIST = ("206", "访问的记录不存在/已经成功删除")
    static let ALREADY_EXIST = ("207", "不能重复创建相同记录")
    static let WEAK_NEW_PWD = ("208", "不安全的弱密码，请输入同时包含数字和字母的组合，并至少含有一个大写字母")
    static let USER_NOT_EXIST = ("209", "该手机号注册的用户不存在")
    static let NO_PRIVELLEGE = ("300", "权限错误")
    static let NOT_ENOUGH_MONEY = ("301", "账户余下额度不足，请充值")
    static let PROFILE_PIC_NOT_VERIFIED = ("302", "个人资料第一张头像未通过真人认证")
    static let SYSE = ("400", "系统异常错误")
    static let OPER_TIMEOUT = ("401", "网络超时")
    static let DBE = ("402", "数据库异常错误")
    static let FAILURE = ("500", "未知的系统异常")
}

enum API_URI:String {
    case public_coutry = "/api/public/country"
    case public_sms = "/api/public/sms"
    case public_sms_check = "/api/public/sms/check"
    case public_userPhoto = "/api/public/userPhoto"
    case auth_login = "/auth/login"
    case auth_mobileapps_logout  = "/auth/mobileapps/logout"
}

class NetworkEngine: NSObject {
    let Base_URL:String = "http://api.ssloth.com"
    
    override init() {
        
    }
    
    func getPublicCountry(withName name:String,completeHandler :@escaping(_ countryObj:Country?) -> Void) -> Void {
        let URLString:String = Base_URL + API_URI.public_coutry.rawValue
        Alamofire.request(URLString, parameters: ["name":name]).responseObject { (response:DataResponse<Country>) in
            completeHandler(response.result.value);
        }
    }
    
    func postPublicSMS(withType type:String, toPhoneno:String, completeHandler :@escaping(_ smsObj:SMS?) -> Void) -> Void {
        let URLString:String = Base_URL + API_URI.public_sms.rawValue
        
        let headers = ["Content-Type": "application/json"]
        
        Alamofire.request(URLString, method: .post, parameters: ["type":type,"toPhoneno":toPhoneno],headers:headers).responseObject { (response:DataResponse<SMS>) in
            completeHandler(response.result.value);
        }
    }
    
    func postPublicSMSCheck(WithPhoneNumber toPhoneno:String,verifyCode:String, completeHandler :@escaping(_ smsObj:SMS?) -> Void) -> Void {
        let URLString:String = Base_URL + API_URI.public_sms_check.rawValue
        Alamofire.request(URLString, method: .post, parameters: ["toPhoneno":toPhoneno,"verifyCode":verifyCode]).responseObject { (response:DataResponse<SMS>) in
            completeHandler(response.result.value);
        }
    }
    
    func post(picFile:String,completeHandler :@escaping(_ userPhoto:UserPhoto?) -> Void) -> Void {
        let URLString:String = Base_URL + API_URI.public_userPhoto.rawValue
        Alamofire.request(URLString, method: .post, parameters: ["picFile": picFile]).responseObject { (response:DataResponse<UserPhoto>) in
            completeHandler(response.result.value);
        }
    }
    
    func postPublicUserAndProfileSignup(withSignpModel signup:UserSignupModel ,completeHandler :@escaping(_ userAndProfile:UserAndProfile?) -> Void) -> Void {
        let URLString:String = self.Base_URL + API_URI.public_userPhoto.rawValue
        let parameters = [
            "userPhotoUuid":signup.userPhotoUuid,
            "mobile": signup.mobile,
            "passwd": signup.passwd,
            "country": signup.country,
            "nickname": signup.nickname,
            "sex": signup.sex,
            "birthdate":signup.birthdate
        ]
        Alamofire.request(URLString, method: .post, parameters: parameters).responseObject { (response:DataResponse<UserAndProfile>) in
            completeHandler(response.result.value);
        }
    }
    
    func postAuthLogin(withMobile mobile:String, passwd:String,completeHandler :@escaping(_ loginModel:LoginModel?) -> Void) -> Void {
        let URLString:String = self.Base_URL + API_URI.auth_login.rawValue
        Alamofire.request(URLString, method: .post, parameters: ["mobile":mobile,"passwd":passwd]).responseObject { (response:DataResponse<LoginModel>) in
            completeHandler(response.result.value);
        }
    }
    
    func postAuthLogout(withUUID uuid:String,token:String,completeHandler :@escaping(_ response:Response?) -> Void) -> Void {
        let URLString:String = self.Base_URL + API_URI.auth_mobileapps_logout.rawValue
        Alamofire.request(URLString, method: .post, parameters: ["uuid":uuid,"token":token]).responseObject { (response:DataResponse<Response>) in
            completeHandler(response.result.value);
        }
    }
    
    
    func upload(uploadImage: UIImage,address: String,scale: CGFloat) {
        let data = UIImageJPEGRepresentation(uploadImage, scale)

        if data == nil{
            SGLog(message: "不存在图片")
            return
        }
        let headers = ["Content-Type": "mutipart/form-data"]
        
        Alamofire
            .upload(data!, to: address, method: .post, headers: headers)
            .responseJSON { response in
            print(response)
        }
    }
}