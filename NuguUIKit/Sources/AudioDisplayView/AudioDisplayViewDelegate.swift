//
//  AudioDisplayViewDelegate.swift
//  NuguUIKit
//
//  Created by 김진님/AI Assistant개발 Cell on 2020/11/28.
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

import NuguAgentsExternal

/// <#Description#>
public protocol AudioDisplayViewDelegate: AnyObject {
    func onCloseButtonClick()
    func onBarTypeButtonClick()
    func onUserInteraction()
    func onNuguButtonClick()
    func onChipsSelect(selectedChips: NuguChipsButton.NuguChipsButtonType?)
    func onPreviousButtonClick()
    func onPlayButtonClick()
    func onPauseButtonClick()
    func onNextButtonClick()
    func onFavoriteButtonClick(current: Bool)
    func onRepeatButtonDidClick(currentMode: AudioPlayerDisplayRepeat)
    func onShuffleButtonDidClick(current: Bool)
    
    func requestAudioPlayerIsPlaying() -> Bool?
    func requestOffset() -> Int?
    func requestDuration() -> Int?
}

public extension AudioPlayerDisplayDelegate {
    func onBarTypeButtonClick() {}
}
