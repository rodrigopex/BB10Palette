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

Page {
    id: colorPage
    property variant selectedItem
    onSelectedItemChanged: {
        colorTitle.textStyle.color = Color.create(selectedItem.titleColor)
        console.log("Change color!", selectedItem.titleColor, "endl")
        stage.background = Color.create(selectedItem.hexColor)
        colorTitle.text = selectedItem.title
        colorCode.text = selectedItem.hexColor
        colorCode.textStyle.color = Color.create(selectedItem.titleColor)
    }
    Container {
        id: stage
        layout: DockLayout {
        }
        Container {
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            Label {
                id: colorTitle
                textStyle {
                    base: textDefinition
                    fontSize: FontSize.XXLarge
                }
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                attachedObjects: [
                    TextStyleDefinition {
                        id: textDefinition
                        onColorChanged: {
                            console.log("mudou!")
                        }
                    }
                ]
            }
            Label {
                id: colorCode
                textStyle.fontSize: FontSize.XLarge
                opacity: 0.3
                horizontalAlignment: HorizontalAlignment.Left
                verticalAlignment: VerticalAlignment.Top
            }
        }
    }
}
