# SPFakeBar

<a href="https://itunes.apple.com/app/id1446635818" target="_blank"><img align="left" src="https://github.com/ivanvorobei/SPFakeBar/blob/master/Resources/Preview.gif" width="240"/></a>

### About

Very similar to original Navigation Bar. Full customisable - height, buttons and many other. Used it as simple view. 

Not support transition and native back button. 

If you like the project, don't forget to `put star ★` and follow me on GitHub:

<p float="left">
    <a href="https://github.com/ivanvorobei">
        <img src="https://github.com/ivanvorobei/Readme/blob/main/Buttons/follow-me-ivanvorobei.svg">
    </a>
    <a href="https://opensource.ivanvorobei.by">
        <img src="https://github.com/ivanvorobei/Readme/blob/main/Buttons/more-libraries.svg">
    </a>
</p>

## Navigate

- [Requirements](#requirements)
- [Installation](#installation)
    - [CocoaPods](#cocoapods)
    - [Manually](#manually)
- [Usage](#usage)
- [Other Projects +gif](#my-projects)
    - [SPAlert](#spalert)
    - [SPLarkController](#splarkcontroller)
    - [SPPermission](#sppermission)
    - [Awesome iOS UI](https://github.com/ivanvorobei/awesome-ios-ui)
- [Other Projects](#other-projects)
- [Russian Community](#russian-community)

## Requirements

Swift `4.2` & `5.0`. Ready for use on iOS 10+

## Installation

### CocoaPods:

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate `SPFakeBar` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'SPFakeBar'
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate `SPFakeBar` into your project manually. Put `Source/SPFakeBar` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.

## Usage

You may want to add a navigation bar to your modal controller. Since it became impossible to change or customize the native controller in swift 4 (I couldn’t even find a way to change the height of the bar), I had to recreate navigation bar from the ground up. Visually it looks real, but it doesn’t execute the necessary functions:

```swift
import UIKit
import SPFakeBar

class ModalController: UIViewController {
    
    let navBar = SPFakeBarView(style: .stork)
        
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        self.navBar.titleLabel.text = "Title"
        self.navBar.leftButton.setTitle("Cancel", for: .normal)
        self.navBar.leftButton.addTarget(self, action: #selector(self.dismissAction), for: .touchUpInside)

        self.view.addSubview(self.navBar)
    }
}
```

You only need to add a navigation bar to the main view, it will automatically layout. Use style `.stork` in init of `SPFakeBarView`. Here is visual preview with Navigation Bar and without it:

<img src="https://github.com/ivanvorobei/SPStorkController/blob/master/Resources/Navigation%20Bar.jpg"/>

## Other Projects

I love being helpful. Here I have provided a list of libraries that I keep up to date. For see `video previews` of libraries without install open [opensource.ivanvorobei.by](https://opensource.ivanvorobei.by) website.<br>
I have libraries with native interface and managing permissions. Also available pack of useful extensions for boost your development process.

<p float="left">
    <a href="https://opensource.ivanvorobei.by">
        <img src="https://github.com/ivanvorobei/Readme/blob/main/Buttons/more-libraries.svg">
    </a>
        <a href="https://xcodeshop.ivanvorobei.by">
        <img src="https://github.com/ivanvorobei/Readme/blob/main/Buttons/xcode-shop.svg">
    </a>
</p>

## Russian Community

Подписывайся в телеграмм-канал, если хочешь получать уведомления о новых туториалах.<br>
Со сложными и непонятными задачами помогут в чате.

<p float="left">
    <a href="https://tutorials.ivanvorobei.by/telegram/channel">
        <img src="https://github.com/ivanvorobei/Readme/blob/main/Buttons/open-telegram-channel.svg">
    </a>
    <a href="https://tutorials.ivanvorobei.by/telegram/chat">
        <img src="https://github.com/ivanvorobei/Readme/blob/main/Buttons/russian-community-chat.svg">
    </a>
</p>

Видео-туториалы выклыдываю на [YouTube](https://tutorials.ivanvorobei.by/youtube):

[![Tutorials on YouTube](https://cdn.ivanvorobei.by/github/readme/youtube-preview.jpg)](https://tutorials.ivanvorobei.by/youtube)
