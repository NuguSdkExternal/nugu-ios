//
//  UpstreamEventSendable+Convenience.swift
//  NuguAgents
//
//  Created by 이민철님/AI Assistant개발Cell on 2020/10/27.
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

import RxSwift

public extension UpstreamDataSendable {
    func sendEvent(
        _ event: Single<Eventable>,
        eventIdentifier: EventIdentifier,
        context: Single<[ContextInfo]>,
        property: CapabilityAgentProperty,
        completion: ((StreamDataState) -> Void)? = nil
    ) -> Completable {
        return Single.zip(event, context)
            .map { (event, contextPayload) -> Upstream.Event in
                event.makeEventMessage(
                    property: property,
                    eventIdentifier: eventIdentifier,
                    contextPayload: contextPayload
                )
            }
            .do(
                onSuccess: { [weak self] in
                    guard let self = self else {
                        completion?(.error(NuguAgentError.requestCanceled))
                        return
                    }
                    self.sendEvent($0, completion: completion)
                },
                onError: { completion?(.error($0)) }
            )
            .asCompletable()
    }
}
