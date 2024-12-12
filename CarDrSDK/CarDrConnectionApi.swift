//
//  CarDrConnectionApi.swift
//  test
//
//  Created by Arvind Mehta on 07/04/23.
//

import Foundation

import Alamofire
import SwiftyJSON
import RepairClubSDK

@objc public class  CarDrConnectionApi: NSObject{
    
    
    public static let carDrApi = CarDrConnectionApi()
    let rc = RepairClubManager.shared
    
    
    
    public func initialConnect(){
        
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1,0"
            self.rc.configureSDK(tokenString: "1feddf76-3b99-4c4b-869a-74046daa3e30", appName: "OBDIQ ULTRA", appVersion: appVersion, userID: "")
        
        print("Connect Successfull")
        
        
        
    }
    
    
}
