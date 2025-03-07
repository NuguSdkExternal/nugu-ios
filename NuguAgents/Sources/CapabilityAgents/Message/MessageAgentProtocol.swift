//
//  MessageAgentProtocol.swift
//  NuguAgents
//
//  Created by yonghoonKwon on 2021/01/06.
//  Copyright (c) 2020 SK Telecom Co., Ltd. All rights reserved.
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

/// `MessageAgent` handles directives for message.
public protocol MessageAgentProtocol: CapabilityAgentable {
    /// The object that acts as the delegate of `MessageAgent`
    var delegate: MessageAgentDelegate? { get set }
    
    /// Send 'CandidatesListed' event with `candidatesItem` received 'SendCandidates' directive.
    /// - Parameters:
    ///   - payload: A payload received 'SendCandidates' directive.
    ///   - header: The header of the originally handled directive.
    ///   - completion: The completion handler to call when the request is complete.
    /// - Returns: The `dialogRequestId` for request.
    @discardableResult func requestSendCandidates(
        payload: MessageAgentDirectivePayload.SendCandidates,
        header: Downstream.Header?,
        completion: ((StreamDataState) -> Void)?
    ) -> String
}
