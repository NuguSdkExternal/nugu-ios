//
//  EventIdentifier.swift
//  NuguAgents
//
//  Created by MinChul Lee on 2020/07/16.
//  Copyright (c) 2019 SK Telecom Co., Ltd. All rights reserved.
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
//

import Foundation

import NuguCoreExternal

public struct EventIdentifier: Equatable {
    public let dialogRequestId: String
    public let messageId: String
    
    public init(
        dialogRequestId: String = TimeUUID().hexString,
        messageId: String = TimeUUID().hexString
    ) {
        self.dialogRequestId = dialogRequestId
        self.messageId = messageId
    }
}
