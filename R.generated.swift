//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 10 files.
  struct file {
    /// Resource file `EULA.html`.
    static let eULAHtml = Rswift.FileResource(bundle: R.hostingBundle, name: "EULA", pathExtension: "html")
    /// Resource file `NSDateTimeAgo.bundle`.
    static let nSDateTimeAgoBundle = Rswift.FileResource(bundle: R.hostingBundle, name: "NSDateTimeAgo", pathExtension: "bundle")
    /// Resource file `checkmark.png`.
    static let checkmarkPng = Rswift.FileResource(bundle: R.hostingBundle, name: "checkmark", pathExtension: "png")
    /// Resource file `checkmark@2x.png`.
    static let checkmark2xPng = Rswift.FileResource(bundle: R.hostingBundle, name: "checkmark@2x", pathExtension: "png")
    /// Resource file `checkmark@3x.png`.
    static let checkmark3xPng = Rswift.FileResource(bundle: R.hostingBundle, name: "checkmark@3x", pathExtension: "png")
    /// Resource file `exclamationMark.png`.
    static let exclamationMarkPng = Rswift.FileResource(bundle: R.hostingBundle, name: "exclamationMark", pathExtension: "png")
    /// Resource file `exclamationMark@2x.png`.
    static let exclamationMark2xPng = Rswift.FileResource(bundle: R.hostingBundle, name: "exclamationMark@2x", pathExtension: "png")
    /// Resource file `exclamationMark@3x.png`.
    static let exclamationMark3xPng = Rswift.FileResource(bundle: R.hostingBundle, name: "exclamationMark@3x", pathExtension: "png")
    /// Resource file `placeHolder_image1.jpg`.
    static let placeHolder_image1Jpg = Rswift.FileResource(bundle: R.hostingBundle, name: "placeHolder_image1", pathExtension: "jpg")
    /// Resource file `placeHolder_offical.jpg`.
    static let placeHolder_officalJpg = Rswift.FileResource(bundle: R.hostingBundle, name: "placeHolder_offical", pathExtension: "jpg")
    
    /// `bundle.url(forResource: "EULA", withExtension: "html")`
    static func eULAHtml(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.eULAHtml
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "NSDateTimeAgo", withExtension: "bundle")`
    static func nSDateTimeAgoBundle(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.nSDateTimeAgoBundle
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "checkmark", withExtension: "png")`
    static func checkmarkPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.checkmarkPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "checkmark@2x", withExtension: "png")`
    static func checkmark2xPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.checkmark2xPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "checkmark@3x", withExtension: "png")`
    static func checkmark3xPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.checkmark3xPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "exclamationMark", withExtension: "png")`
    static func exclamationMarkPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.exclamationMarkPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "exclamationMark@2x", withExtension: "png")`
    static func exclamationMark2xPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.exclamationMark2xPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "exclamationMark@3x", withExtension: "png")`
    static func exclamationMark3xPng(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.exclamationMark3xPng
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "placeHolder_image1", withExtension: "jpg")`
    static func placeHolder_image1Jpg(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.placeHolder_image1Jpg
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "placeHolder_offical", withExtension: "jpg")`
    static func placeHolder_officalJpg(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.placeHolder_officalJpg
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 49 images.
  struct image {
    /// Image `AddGroup`.
    static let addGroup = Rswift.ImageResource(bundle: R.hostingBundle, name: "AddGroup")
    /// Image `actionbar_group_icon`.
    static let actionbar_group_icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "actionbar_group_icon")
    /// Image `add-group-champagne`.
    static let addGroupChampagne = Rswift.ImageResource(bundle: R.hostingBundle, name: "add-group-champagne")
    /// Image `add-group-gray`.
    static let addGroupGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "add-group-gray")
    /// Image `blockUser`.
    static let blockUser = Rswift.ImageResource(bundle: R.hostingBundle, name: "blockUser")
    /// Image `button-checked`.
    static let buttonChecked = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-checked")
    /// Image `button-group`.
    static let buttonGroup = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-group")
    /// Image `button-no`.
    static let buttonNo = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-no")
    /// Image `button-profile-liked`.
    static let buttonProfileLiked = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-profile-liked")
    /// Image `button-profile-send message`.
    static let buttonProfileSendMessage = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-profile-send message")
    /// Image `button-profile-unliked`.
    static let buttonProfileUnliked = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-profile-unliked")
    /// Image `button-uncheck`.
    static let buttonUncheck = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-uncheck")
    /// Image `button-yes`.
    static let buttonYes = Rswift.ImageResource(bundle: R.hostingBundle, name: "button-yes")
    /// Image `camera-champagne`.
    static let cameraChampagne = Rswift.ImageResource(bundle: R.hostingBundle, name: "camera-champagne")
    /// Image `camera-gray`.
    static let cameraGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "camera-gray")
    /// Image `chat-champagne`.
    static let chatChampagne = Rswift.ImageResource(bundle: R.hostingBundle, name: "chat-champagne")
    /// Image `chat-gray`.
    static let chatGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "chat-gray")
    /// Image `checkmark`.
    static let checkmark = Rswift.ImageResource(bundle: R.hostingBundle, name: "checkmark")
    /// Image `close`.
    static let close = Rswift.ImageResource(bundle: R.hostingBundle, name: "close")
    /// Image `discover-champagne`.
    static let discoverChampagne = Rswift.ImageResource(bundle: R.hostingBundle, name: "discover-champagne")
    /// Image `discover-gray`.
    static let discoverGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "discover-gray")
    /// Image `exclamationMark`.
    static let exclamationMark = Rswift.ImageResource(bundle: R.hostingBundle, name: "exclamationMark")
    /// Image `female`.
    static let female = Rswift.ImageResource(bundle: R.hostingBundle, name: "female")
    /// Image `go-back`.
    static let goBack = Rswift.ImageResource(bundle: R.hostingBundle, name: "go-back")
    /// Image `go-right`.
    static let goRight = Rswift.ImageResource(bundle: R.hostingBundle, name: "go-right")
    /// Image `heart-hollow`.
    static let heartHollow = Rswift.ImageResource(bundle: R.hostingBundle, name: "heart-hollow")
    /// Image `heart-solid`.
    static let heartSolid = Rswift.ImageResource(bundle: R.hostingBundle, name: "heart-solid")
    /// Image `icon-clock`.
    static let iconClock = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon-clock")
    /// Image `icon-etcetera`.
    static let iconEtcetera = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon-etcetera")
    /// Image `icon_officialFlag`.
    static let icon_officialFlag = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_officialFlag")
    /// Image `icon_setting`.
    static let icon_setting = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_setting")
    /// Image `icon_snweibo`.
    static let icon_snweibo = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_snweibo")
    /// Image `icon_wxsession`.
    static let icon_wxsession = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_wxsession")
    /// Image `icon_wxtimeline`.
    static let icon_wxtimeline = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon_wxtimeline")
    /// Image `icon`.
    static let icon = Rswift.ImageResource(bundle: R.hostingBundle, name: "icon")
    /// Image `lanuchIcon`.
    static let lanuchIcon = Rswift.ImageResource(bundle: R.hostingBundle, name: "lanuchIcon")
    /// Image `litmatrix`.
    static let litmatrix = Rswift.ImageResource(bundle: R.hostingBundle, name: "litmatrix")
    /// Image `location`.
    static let location = Rswift.ImageResource(bundle: R.hostingBundle, name: "location")
    /// Image `male`.
    static let male = Rswift.ImageResource(bundle: R.hostingBundle, name: "male")
    /// Image `me-champagne`.
    static let meChampagne = Rswift.ImageResource(bundle: R.hostingBundle, name: "me-champagne")
    /// Image `me-gray`.
    static let meGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "me-gray")
    /// Image `pen`.
    static let pen = Rswift.ImageResource(bundle: R.hostingBundle, name: "pen")
    /// Image `placeHolder_image1.jpg`.
    static let placeHolder_image1Jpg = Rswift.ImageResource(bundle: R.hostingBundle, name: "placeHolder_image1.jpg")
    /// Image `placeHolder_offical.jpg`.
    static let placeHolder_officalJpg = Rswift.ImageResource(bundle: R.hostingBundle, name: "placeHolder_offical.jpg")
    /// Image `report`.
    static let report = Rswift.ImageResource(bundle: R.hostingBundle, name: "report")
    /// Image `select_photoBg`.
    static let select_photoBg = Rswift.ImageResource(bundle: R.hostingBundle, name: "select_photoBg")
    /// Image `share`.
    static let share = Rswift.ImageResource(bundle: R.hostingBundle, name: "share")
    /// Image `trash-can`.
    static let trashCan = Rswift.ImageResource(bundle: R.hostingBundle, name: "trash-can")
    /// Image `user_photoBg`.
    static let user_photoBg = Rswift.ImageResource(bundle: R.hostingBundle, name: "user_photoBg")
    
    /// `UIImage(named: "AddGroup", bundle: ..., traitCollection: ...)`
    static func addGroup(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.addGroup, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "actionbar_group_icon", bundle: ..., traitCollection: ...)`
    static func actionbar_group_icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.actionbar_group_icon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "add-group-champagne", bundle: ..., traitCollection: ...)`
    static func addGroupChampagne(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.addGroupChampagne, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "add-group-gray", bundle: ..., traitCollection: ...)`
    static func addGroupGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.addGroupGray, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "blockUser", bundle: ..., traitCollection: ...)`
    static func blockUser(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.blockUser, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-checked", bundle: ..., traitCollection: ...)`
    static func buttonChecked(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonChecked, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-group", bundle: ..., traitCollection: ...)`
    static func buttonGroup(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonGroup, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-no", bundle: ..., traitCollection: ...)`
    static func buttonNo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonNo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-profile-liked", bundle: ..., traitCollection: ...)`
    static func buttonProfileLiked(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonProfileLiked, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-profile-send message", bundle: ..., traitCollection: ...)`
    static func buttonProfileSendMessage(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonProfileSendMessage, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-profile-unliked", bundle: ..., traitCollection: ...)`
    static func buttonProfileUnliked(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonProfileUnliked, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-uncheck", bundle: ..., traitCollection: ...)`
    static func buttonUncheck(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonUncheck, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "button-yes", bundle: ..., traitCollection: ...)`
    static func buttonYes(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.buttonYes, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "camera-champagne", bundle: ..., traitCollection: ...)`
    static func cameraChampagne(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cameraChampagne, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "camera-gray", bundle: ..., traitCollection: ...)`
    static func cameraGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.cameraGray, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "chat-champagne", bundle: ..., traitCollection: ...)`
    static func chatChampagne(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.chatChampagne, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "chat-gray", bundle: ..., traitCollection: ...)`
    static func chatGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.chatGray, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "checkmark", bundle: ..., traitCollection: ...)`
    static func checkmark(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.checkmark, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "close", bundle: ..., traitCollection: ...)`
    static func close(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.close, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "discover-champagne", bundle: ..., traitCollection: ...)`
    static func discoverChampagne(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.discoverChampagne, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "discover-gray", bundle: ..., traitCollection: ...)`
    static func discoverGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.discoverGray, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "exclamationMark", bundle: ..., traitCollection: ...)`
    static func exclamationMark(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.exclamationMark, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "female", bundle: ..., traitCollection: ...)`
    static func female(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.female, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "go-back", bundle: ..., traitCollection: ...)`
    static func goBack(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.goBack, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "go-right", bundle: ..., traitCollection: ...)`
    static func goRight(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.goRight, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "heart-hollow", bundle: ..., traitCollection: ...)`
    static func heartHollow(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.heartHollow, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "heart-solid", bundle: ..., traitCollection: ...)`
    static func heartSolid(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.heartSolid, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon", bundle: ..., traitCollection: ...)`
    static func icon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon-clock", bundle: ..., traitCollection: ...)`
    static func iconClock(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.iconClock, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon-etcetera", bundle: ..., traitCollection: ...)`
    static func iconEtcetera(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.iconEtcetera, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_officialFlag", bundle: ..., traitCollection: ...)`
    static func icon_officialFlag(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_officialFlag, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_setting", bundle: ..., traitCollection: ...)`
    static func icon_setting(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_setting, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_snweibo", bundle: ..., traitCollection: ...)`
    static func icon_snweibo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_snweibo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_wxsession", bundle: ..., traitCollection: ...)`
    static func icon_wxsession(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_wxsession, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "icon_wxtimeline", bundle: ..., traitCollection: ...)`
    static func icon_wxtimeline(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.icon_wxtimeline, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "lanuchIcon", bundle: ..., traitCollection: ...)`
    static func lanuchIcon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.lanuchIcon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "litmatrix", bundle: ..., traitCollection: ...)`
    static func litmatrix(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.litmatrix, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "location", bundle: ..., traitCollection: ...)`
    static func location(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.location, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "male", bundle: ..., traitCollection: ...)`
    static func male(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.male, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "me-champagne", bundle: ..., traitCollection: ...)`
    static func meChampagne(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.meChampagne, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "me-gray", bundle: ..., traitCollection: ...)`
    static func meGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.meGray, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "pen", bundle: ..., traitCollection: ...)`
    static func pen(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.pen, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "placeHolder_image1.jpg", bundle: ..., traitCollection: ...)`
    static func placeHolder_image1Jpg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.placeHolder_image1Jpg, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "placeHolder_offical.jpg", bundle: ..., traitCollection: ...)`
    static func placeHolder_officalJpg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.placeHolder_officalJpg, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "report", bundle: ..., traitCollection: ...)`
    static func report(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.report, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "select_photoBg", bundle: ..., traitCollection: ...)`
    static func select_photoBg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.select_photoBg, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "share", bundle: ..., traitCollection: ...)`
    static func share(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.share, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "trash-can", bundle: ..., traitCollection: ...)`
    static func trashCan(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.trashCan, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "user_photoBg", bundle: ..., traitCollection: ...)`
    static func user_photoBg(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.user_photoBg, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 2 nibs.
  struct nib {
    /// Nib `MIDatePicker`.
    static let mIDatePicker = _R.nib._MIDatePicker()
    /// Nib `RatingViewController`.
    static let ratingViewController = _R.nib._RatingViewController()
    
    /// `UINib(name: "MIDatePicker", in: bundle)`
    static func mIDatePicker(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.mIDatePicker)
    }
    
    /// `UINib(name: "RatingViewController", in: bundle)`
    static func ratingViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.ratingViewController)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 2 localization tables.
  struct string {
    /// This `R.string.launchScreen` struct is generated, and contains static references to 2 localization keys.
    struct launchScreen {
      /// en translation: Copyright@2016
      /// 
      /// Locales: en, zh-Hans
      static let geQDpHxTText = Rswift.StringResource(key: "geQ-dp-hxT.text", tableName: "LaunchScreen", bundle: R.hostingBundle, locales: ["en", "zh-Hans"], comment: nil)
      /// en translation: 随心所欲 感知留学圈内动态
      /// 
      /// Locales: en, zh-Hans
      static let c1NZfQ2dText = Rswift.StringResource(key: "c1N-zf-Q2d.text", tableName: "LaunchScreen", bundle: R.hostingBundle, locales: ["en", "zh-Hans"], comment: nil)
      
      /// en translation: Copyright@2016
      /// 
      /// Locales: en, zh-Hans
      static func geQDpHxTText(_: Void = ()) -> String {
        return NSLocalizedString("geQ-dp-hxT.text", tableName: "LaunchScreen", bundle: R.hostingBundle, comment: "")
      }
      
      /// en translation: 随心所欲 感知留学圈内动态
      /// 
      /// Locales: en, zh-Hans
      static func c1NZfQ2dText(_: Void = ()) -> String {
        return NSLocalizedString("c1N-zf-Q2d.text", tableName: "LaunchScreen", bundle: R.hostingBundle, comment: "")
      }
      
      fileprivate init() {}
    }
    
    /// This `R.string.localizable` struct is generated, and contains static references to 0 localization keys.
    struct localizable {
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    struct _MIDatePicker: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MIDatePicker"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> MIDatePicker? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MIDatePicker
      }
      
      fileprivate init() {}
    }
    
    struct _RatingViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "RatingViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if UIKit.UIImage(named: "lanuchIcon") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'lanuchIcon' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}