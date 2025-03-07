//
//  AlertsAgentProtocol.swift
//  NuguAgents
//
//  Created by yonghoonKwon on 2021/02/26.
//  Copyright (c) 2021 SK Telecom Co., Ltd. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation

import NuguCoreExternal

/// <#Description#>
public protocol AlertsAgentProtocol: CapabilityAgentable {
    
    /// <#Description#>
    var delegate: AlertsAgentDelegate? { get set }
    
    @discardableResult func requestAlertAssetRequired(
        playServiceId: String,
        token: String,
        completion: ((StreamDataState) -> Void)?
    ) -> String
}
