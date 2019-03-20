//
//  ResourceDataController.swift
//  Programmer Resource
//
//  Created by Guled Ali on 3/19/19.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import Foundation
class ResourceDataController  {
    
    var resources: [Resource]
    
    init() {
        
        let plistURL = Bundle.main.path(forResource: "ProgrammerResources", ofType: "plist")
        let resourcesPlist = NSArray(contentsOfFile: plistURL!)
        
        var resources: [Resource] = []
        
        for r in resourcesPlist! {
            let dict = r as! [String:String]
            let res = Resource(dictionary: dict)
            resources.append(res)

        }
        self.resources = resources
    }
}
