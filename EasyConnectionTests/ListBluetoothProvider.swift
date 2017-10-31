//
//  ListBluetoothProvider.swift
//  EasyConnectionTests
//
//  Created by Luccas Melo on 28/10/2017.
//  Copyright © 2017 Luccas Melo. All rights reserved.
//

import Foundation
import ExternalAccessory


public class ListBluetoothProvider{
    public init(){
        
    }
    public var devicesDisconnected:(EAAccessory)->()={(response) in print("No callback implemented")}
    
    public var devicesConnected: ([EAAccessory])->() = {(response) in   print("No callback implemented")}
    
    public func search(_ devicesConnected:@escaping ([EAAccessory])->()){
        self.devicesConnected = devicesConnected
        self.devicesConnected(EAAccessoryManager.shared().connectedAccessories)
    }
}
