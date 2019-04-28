# SPFakeBar

Very similar to original Navigation Bar. Full customisable - height, buttons and many other. Used it as simple view. Not support transition and native nack button. You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) or [Code - Learn Swift & Design](https://itunes.apple.com/app/id1453325619) apps from AppStore. It apps used `SPFakeBar`.

### Preview

<img src="https://github.com/IvanVorobei/SPFakeBar/blob/master/Resources/Preview.gif" width="500">

If you want to **buy source code** of this apps, please, go to [xcode-shop.com](https://xcode-shop.com).

## Navigate

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Other Projects (+gif)](#my-projects)
    - [SPStorkController](#spstorkcontroller)
    - [SPLarkController](#splarkcontroller)
    - [SPPermission](#sppermission)
    - [Xcode Shop](#xcode-shop)
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

<img src="https://github.com/IvanVorobei/SPStorkController/blob/master/Resources/Navigation%20Bar.jpg"/>

## My projects

### SPStorkController

[SPStorkController](https://github.com/IvanVorobei/SPStorkController) is very similar to the modal **controller displayed in Apple Music, Podcasts and Mail** apps. Customizable height of view. Check scroll's bounce for more interactive. Simple adding close button and centering arrow indicator. You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) app from AppStore.

<img src="https://github.com/IvanVorobei/SPStorkController/blob/master/Resources/Preview.gif" width="500">

If you want to **buy source code** of this apps, please, go to [xcode-shop.com](https://xcode-shop.com).

### SPLarkController

[SPLarkController](https://github.com/IvanVorobei/SPLarkController) make **settings screen** for your application. You can add **buttons and switches**. The amount cells is not limited. You can start using project with just two lines of code and easy customisation.

<img src="https://github.com/IvanVorobei/SPLarkController/blob/master/Resources/Preview.gif" width="440">

You can download [Code - Learn Swift & Design](https://itunes.apple.com/app/id1453325619) app, which uses `SPLarkController`. Also you can **buy source code** of this app on [xcode-shop.com](https://xcode-shop.com).

### SPPermission

[SPPermission](https://github.com/IvanVorobei/SPPermission) allow request permissions **with native dialog** UI and interactive animations. Also you can request permissions without dialog. Check state any permission. You can start using this project with just two lines of code and easy customisation. 

<img src="https://github.com/IvanVorobei/SPPermission/blob/master/Resources/Preview.gif" width="500">

### Xcode Shop

If you want **buy apps with source code**, you can visit my [xcode-shop.com](xcode-shop.com). Here I am sale apps, modules, 3D elements and other. In applications you can find many cool UI that will be useful for your projects. Also by buying, **you support me** and my free GitHub development.

## License
`SPFakeBar` is released under the MIT license. Check `LICENSE.md` for details.

## Contact
If you need any application or UI to be developed, message me at hello@ivanvorobei.by or via [telegram](https://t.me/ivanvorobei). I develop iOS apps and designs. I use `swift` for development. To request more functionality, you should create a new issue. You can see my [apps in AppStore](https://itunes.apple.com/developer/id1446635817).
