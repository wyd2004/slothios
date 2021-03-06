//
//  Global.swift
//  SlothChat
//
//  Created by Fly on 16/10/26.
//  Copyright © 2016年 ssloth.com. All rights reserved.
//

import UIKit

class Global: BaseObject {
    var globalLogin: LoginModel?{
        didSet{
            if globalLogin != nil {
                globalLogin?.caheForLoginModel()
            }
        }
    }
    
    var globalProfile: UserProfileData?{
        didSet{
            if globalProfile != nil {
                globalProfile?.caheForUserProfile()
            }
        }
    }
    
    var globalSysConfig: SysConfigData?{
        didSet{
            if globalSysConfig != nil {
                globalSysConfig?.cacheForSysConfig()
            }
        }
    }
    
    var chatToken: String?{
        didSet{
            if chatToken != nil {
                ChatTokenData.cacheForChatToken(token:chatToken!)
            }
        }
    }
    
    static var shared : Global {
        struct Static {
            static let instance : Global = Global()
        }
        return Static.instance
    }
    
    override init() {
        globalLogin = LoginModel.ModelFromCache()
        globalProfile = UserProfileData.ProfileFromCache()
        globalSysConfig = SysConfigData.ConfigFromCache()
        chatToken = ChatTokenData.TokenFromCache()
    }
    
    func isLogin() -> Bool {
        if (globalLogin != nil) && !(globalLogin?.token?.isEmpty)!
        && (globalProfile != nil){
            return true
        }
        return false
    }
    
    func isMyself(userUuid: String?) -> Bool {
        if userUuid == nil ||
            self.globalProfile?.userUuid == nil{
            return false
        }
        return (self.globalProfile?.userUuid == userUuid!)
    }
    
    func logout() {
        globalLogin = nil
        LoginModel.removeFromCache()
        globalProfile = nil
        UserProfileData.removeFromCache()
        globalSysConfig = nil
        SysConfigData.removeFromCache()
        chatToken = nil
        ChatTokenData.removeFromCache()
    }
}

struct GlobalData {
    struct ConversationListConst {
        static let conversationGroupCellHeight:CGFloat = 184;
        static let conversationPrivateCellHeight:CGFloat = 106;
    }
    
    
}
