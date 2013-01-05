/* Copyright (c) 2012 Research In Motion Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.0

Container {
    id: cell
    property alias activatedSpace: rightBlackLayout.spaceQuota
    preferredHeight: 130
    verticalAlignment: VerticalAlignment.Fill
    background: Color.create(ListItemData.hexColor)
    layout: DockLayout {
    }
    ListItem.onActivationChanged: {
        if (active) {
            cell.activatedSpace = 3
            backTitleShow.play()
        } else {
            cell.activatedSpace = 1
            backTitleHide.play()
        }
    }
    Label {
        id: backTitle
        text: ListItemData.hexColor
        textStyle {
            fontSize: FontSize.XXLarge
            color: Color.create(ListItemData.titleColor)
        }
        verticalAlignment: VerticalAlignment.Bottom
        opacity: 0.0
        animations: [
            FadeTransition {
                id: backTitleShow
                fromOpacity: 0.0
                toOpacity: 0.3
                target: backTitle
                duration: 300
            },
            FadeTransition {
                id: backTitleHide
                fromOpacity: 0.3
                toOpacity: 0.0
                target: backTitle
                duration: 300
            }
        ]
    }
    Container {
        leftPadding: 15
        horizontalAlignment: HorizontalAlignment.Fill
        verticalAlignment: VerticalAlignment.Fill
        layout: StackLayout {
            orientation: LayoutOrientation.LeftToRight
        }
        Label {
            layoutProperties: StackLayoutProperties {
                spaceQuota: 4
            }
            text: ListItemData.title
            textStyle {
                fontSize: FontSize.XLarge
                color: Color.create(ListItemData.titleColor)
            }
        }
        Container {
            background: Color.create(0, 0, 0, 0.5)
            verticalAlignment: VerticalAlignment.Fill
            layout: DockLayout {
            }
            layoutProperties: StackLayoutProperties {
                id: rightBlackLayout
                spaceQuota: 1
            }
            Label {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                text: ListItemData.hexColor
                textStyle {
                    fontSize: FontSize.XSmall
                    color: Color.create("#fafafa")
                }
            }
        }
    }
    Divider {
    }
}
