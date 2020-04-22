# SPFakeBar

<a href="https://itunes.apple.com/app/id1446635818" target="_blank"><img align="left" src="https://github.com/ivanvorobei/SPFakeBar/blob/master/Resources/Preview.gif" width="400"/></a>

### About

Very similar to original Navigation Bar. Full customisable - height, buttons and many other. Used it as simple view. Not support transition and native nack button. 

You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) app from AppStore. For **buy source code** of app in preview, go to:

[![xcode-shop.com](https://github.com/ivanvorobei/SPPermissions/blob/master/Assets/Buttons/xcode-shop.svg)](https://xcode-shop.com)

If you like the project, do not forget to `put star ★` and follow me on GitHub:

[![https://github.com/ivanvorobei](https://github.com/ivanvorobei/SPPermissions/blob/master/Assets/Buttons/follow-me-on-github.svg)](https://github.com/ivanvorobei)

## Navigate

- [Requirements](#requirements)
- [Installation](#installation)
    - [CocoaPods](#cocoapods)
    - [Carthage](#carthage)
    - [Swift Package Manager](#swift-package-manager)
    - [Manually](#manually)
- [Usage](#usage)
- [Other Projects +gif](#my-projects)
    - [SPAlert](#spalert)
    - [SPLarkController](#splarkcontroller)
    - [SPPermission](#sppermission)
    - [Awesome iOS UI](https://github.com/ivanvorobei/awesome-ios-ui)
- [License](#license)
- [Contact or Order Develop](#contact)

## Requirements

Swift 4.2 & **5.0**. Ready for use on iOS 10+

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

## My projects

<img align="left" src="https://github.com/ivanvorobei/SPAlert/blob/master/Assets/Readme/Preview%20-%20Done.gif" width="220"/>

### SPAlert

[SPAlert](https://github.com/ivanvorobei/SPAlert) is **popup from Apple Music & Feedback in AppStore**. Contains `Done` & `Heart` presets. `Done` present with draw path animation. I clone Apple's alerts as much as possible.  
You can find this alerts in AppStore after feedback, after added song to library in Apple Music. I am also add alert without icon, as simple message.

You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) app from AppStore. If you want to **buy source code** of app in preview, please, go to [xcode-shop.com](https://xcode-shop.com).

---

<img align="left" src="https://github.com/ivanvorobei/SPLarkController/blob/master/Resources/Preview.gif" width="220"/>

### SPLarkController

[SPLarkController](https://github.com/ivanvorobei/SPLarkController) transition between controllers. Translate to top. Make **settings screen** for application. You can add **buttons and switches**. The amount cells is not limited. You can start using project with just two lines of code and easy customisation. For implement settings as in preiew, see section [Settings Controller](https://github.com/ivanvorobei/SPLarkController#settings-controller).

You can download example app [Code - Learn Swift & Design](https://itunes.apple.com/app/id1453325619) from AppStore. If you want to **buy source code** of app this app, please, go to [xcode-shop.com](https://xcode-shop.com).

---

<img align="left" src="https://github.com/ivanvorobei/SPPermissions/blob/master/Assets/Readme/Preview%20-%205.0.jpg" width="220"/>

### SPPermission

[SPPermission](https://github.com/ivanvorobei/SPPermission) allow request permissions **with native dialog** UI and interactive animations. Also you can request permissions without dialog. Check state any permission. You can start using this project with just two lines of code and easy customisation.

You can buy example Dialog & Dinamic animations in [xcode-shop.com](https://xcode-shop.com/ui-elements), see [preview](https://xcode-shop.com/assets/preview/dinamic-alert.mov).

## License

`SPFakeBar` is released under the MIT license. Check `LICENSE.md` for details.
