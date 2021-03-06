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

NavigationPane {
    id: navigator
    Menu.definition: MenuDefinition {
        helpAction: HelpActionItem {
            onTriggered: {
                var helpSheet = helpSheetFactory.createObject()
                helpSheet.open()
            }
        }
    }
    Page {
        titleBar: TitleBar {
            title: "Visual style"
        }
        Container {
            ListView {
                id: myList
                dataModel: XmlDataModel {
                    source: "models/palette.xml"
                }
                leadingVisualSnapThreshold: 0.8
                leadingVisual: Container {
                    leftPadding: 30
                    rightPadding: 30
                    topPadding: 30
                    bottomPadding: 50
                    background: Color.create("#f8f8f8")
                    Label {
                        text: "BlackBerry 10 uses a sophisticated, fresh, and broad-ranging color palette. Neutral colors serve as the background and account for approximately 90% of the color on the screen. Brighter accent colors account for the remaining 10%. The visual style incorporates real-life metaphors such as using traffic light colors to convey meaning (for example, red for negative actions or results).

If you incorporate backgrounds, use patterns which are repetitive and scalable. Try to incorporate patterns instead of using images or gradients. Backgrounds with a repetitive pattern use less memory and don't appear grainy when scaled."
                        multiline: true
                        textStyle {
                            fontSize: FontSize.XSmall
                            fontStyle: FontStyle.Italic
                            textAlign: TextAlign.Justify
                            color: Color.create("#555555")
                        }
                    }
                }
                onTriggered: {
                    var selectedItem = dataModel.data(indexPath)
                    var newPage = colorPage.createObject()
                    newPage.selectedItem = selectedItem
                    navigator.push(newPage)
                }
                listItemComponents: [
                    ListItemComponent {
                        type: "category"
                        Header {
                            title: ListItemData.title
                        }
                    },
                    ListItemComponent {
                        type: "color"
                        Cell {
                        }
                    }
                ]
            }
        }
        attachedObjects: [
            ComponentDefinition {
                id: colorPage
                source: "ColorPage.qml"
            }
        ]
    }
    attachedObjects: [
        ComponentDefinition {
            id: helpSheetFactory
            HelpSheet {
            }
        }
    ]
}
