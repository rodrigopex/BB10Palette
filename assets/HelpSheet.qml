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

Sheet {
    id: help
    Page {
        titleBar: TitleBar {
            title: "Help"
            dismissAction: ActionItem {
                title: "Close"
                onTriggered: {
                    help.close()
                }
            }
        }
        Container {
            background: Color.create("#121212")
            layout: DockLayout {
            }
            Container {
                horizontalAlignment: HorizontalAlignment.Center
                topPadding: 10
                leftPadding: 10
                rightPadding: 10
                Container {
                    layout: DockLayout {
                    }
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1
                    }
                    Label {
                        text: "All the information of this application was extracted of the UI Guide."
                        multiline: true
                        verticalAlignment: VerticalAlignment.Center
                        textStyle {
                            color: Color.create("#fafafa")
                            fontSizeValue: 11
                            textAlign: TextAlign.Justify
                        }
                    }
                }
                Container {
                    horizontalAlignment: HorizontalAlignment.Fill
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1
                    }
                    Label {
                        text: "Read the UI Guide online"
                        textStyle {
                            color: Color.create("#b1b1b1")
                            fontSizeValue: 8
                            fontStyle: FontStyle.Italic
                        }
                    }
                    Label {
                        id: readLinkLabel
                        text: "https://developer.blackberry.com/design/"
                        textStyle {
                            color: Color.create("#667b94")
                            fontSizeValue: 6
                            fontStyle: FontStyle.Italic
                        }
                        contextActions: ActionSet {
                            InvokeActionItem {
                                query {
                                    mimeType: "text/url"
                                    uri: readLinkLabel.text
                                    invokeActionId: "bb.action.OPEN"
                                }
                            }
                        }
                    }
                    Label {
                        text: "Download the UI guide"
                        textStyle {
                            color: Color.create("#b1b1b1")
                            fontSizeValue: 8
                            fontStyle: FontStyle.Italic
                        }
                    }
                    Label {
                        id: downloadLinkLabel
                        text: "https://developer.blackberry.com/devzone/files/design/UI_Guidelines_BlackBerry_10.pdf"
                        textStyle {
                            color: Color.create("#667b94")
                            fontSizeValue: 6
                            fontStyle: FontStyle.Italic
                        }
                        contextActions: ActionSet {
                            InvokeActionItem {
                                query {
                                    mimeType: "text/url"
                                    uri: downloadLinkLabel.text
                                    invokeActionId: "bb.action.OPEN"
                                }
                            }
                        }
                    }
                }
                Container {
                    topPadding: 100
                    horizontalAlignment: HorizontalAlignment.Fill
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 2
                    }
                    ImageView {
                        scalingMethod: ScalingMethod.AspectFit
                        imageSource: "images/bb10-logo.png"
                        verticalAlignment: VerticalAlignment.Center
                        horizontalAlignment: HorizontalAlignment.Center
                    }
                }
            }
        }
    }
}
