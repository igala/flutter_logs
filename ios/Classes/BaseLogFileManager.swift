//
//  BaseLogFileManager.swift
//  flutter_logs
//
//  Created by shidur on 21/11/2021.
//

import Foundation
import CocoaLumberjack
class BaseLogFileManager : DDLogFileManagerDefault{
    
    var fileName :String = "default.log"
    
    public init(fileName: String,directory:String) {
        self.fileName = fileName
        super.init(logsDirectory:directory)
        
    }
    override var newLogFileName: String {
        get {
           
            return self.fileName
        }
    }


    
    override func isLogFile(withName fileName: String) -> Bool {
        return fileName.hasSuffix("txt")
    }
    
    
   
}
