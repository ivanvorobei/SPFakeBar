# SPFakeBar

It pod allow simple added navigation bar and full customize it - height or added custom views.

Preview GIF is loading `3mb`. Please, wait.

<img src="https://github.com/IvanVorobei/SPFakeBar/blob/master/Resources/Preview.gif" width="500">

You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) or [Code - Learn Swift & Design](https://itunes.apple.com/app/id1453325619) apps from AppStore. It apps used `SPStorkController`. If you want to buy source code of this apps, please go to [xcode-shop.com](https://xcode-shop.com).

<img src="https://github.com/IvanVorobei/SPStorkController/blob/master/Resources/Shop.svg"/>

I have a store where I sell applications and modules for Xcode projects. You can find source codes of applications or custom animations / UI. I regularly update the code. Visit my website to see all items for sale: [xcode-shop.com](https://xcode-shop.com). On the website you can find previews and for some items links to AppStore.

<img src="https://github.com/IvanVorobei/SPStorkController/blob/master/Resources/Shop.svg"/>

## Requirements
Swift 4.2. Ready for use on iOS 10+

## Integration
Put `Source/SPFakeBar` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.

Or via CocoaPods:
```ruby
pod 'SPFakeBar'
```

## How to use

You may want to add a navigation bar to your modal controller. Since it became impossible to change or customize the native controller in swift 4 (I couldn’t even find a way to change the height of the bar), I had to recreate navigation bar from the ground up. Visually it looks real, but it doesn’t execute the necessary functions:

```swift
import UIKit

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

Here I would like to offer you my other projects.

### SPStorkController
I created [SPStorkController](https://github.com/IvanVorobei/SPStorkController). It is a modal controller like in Mail or Apple Music application. Similar animation and transition. You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) or [Code - Learn Swift & Design](https://itunes.apple.com/app/id1453325619) apps from AppStore.

<img src="https://github.com/IvanVorobei/SPStorkController/blob/master/Resources/Preview.gif" width="440">

You can buy source code of this apps on [xcode-shop.com](https://xcode-shop.com).

### SPStorkController
I created [SPStorkController](https://github.com/IvanVorobei/SPStorkController). It is a modal controller like in Mail or Apple Music application. Similar animation and transition. You can download example [Debts - Spending tracker](https://itunes.apple.com/app/id1446635818) or [Code - Learn Swift & Design](https://itunes.apple.com/app/id1453325619) apps from AppStore.

<img src="https://github.com/IvanVorobei/SPStorkController/blob/master/Resources/Preview.gif" width="440">

You can buy source code of this apps on [xcode-shop.com](https://xcode-shop.com). 

### SPPermission
Project [SPPermission](https://github.com/IvanVorobei/SPPermission) for managing permissions with customizable visual effects. Beautiful dialog increases the chance of approval. Simple control of this module saves you hours of development. You can start using project with just two lines of code and easy customization!

<img src="https://github.com/IvanVorobei/SPPermission/blob/master/Resources/Preview.gif" width="500">

## License
`SPStorkController` is released under the MIT license. Check `LICENSE.md` for details.

## Contact
If you need any application or UI to be developed, message me at hello@ivanvorobei.by. I develop iOS apps and create designs, too. I use `swift` for development. To request more functionality, you should create a new issue. My personal account with [apps](https://itunes.apple.com/developer/id1446635817).
