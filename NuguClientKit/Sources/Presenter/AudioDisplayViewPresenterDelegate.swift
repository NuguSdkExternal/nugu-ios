//
//  AudioDisplayViewPresenterDelegate.swift
//  NuguClientKit
//
//  Created by 김진님/AI Assistant개발 Cell on 2020/12/23.
//  Copyright © 2020 SK Telecom Co., Ltd. All rights reserved.
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
import NuguAgentsExternal
import NuguUIKitExternal

/// A delegate that application can extend to observe `DisplayWebViewPresenter` changes.
public protocol AudioDisplayViewPresenterDelegate: AnyObject {
    /// Delegate method called when NuguButton in AudioDisplayView has been clicked.
    func onAudioDisplayViewNuguButtonClick()
    /// Delegate method called when chips button in AudioDisplayView has been clicked.
    func onAudioDisplayViewChipsSelect(selectedChips: NuguChipsButton.NuguChipsButtonType?)
}
