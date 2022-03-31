# AlertMessage

# Usage
1. Add a binding bool to control AlertMessage presentation state
1. Add `.alertMessage` modifier to your view
```swift
struct ContentView: View {

    @State var isActive = false

    var body: some View {
        YourView()
            .alertMessage(isPresented: $isActive) {
                Text("Alert")
                    .frame(width: 200, height: 60)
                    .background(Color.orange)
                    .cornerRadius(10.0)
             }
    }
}
```

### Required parameters 
`isPresented` - binding to determine if the AlertMessage should be seen on screen or hidden     
`view` - view you want to display on your AlertMessage 

### Available customizations - optional parameters  
`type` - banner, centered (default), snackbar 
`animation` - custom animation for popup sliding onto screen  
`autohideIn` - time after which popup should disappear    
`dragToDismiss` - true by default: enable/disable drag to dismiss (upwards for .top popup types, downwards for .bottom and default type)    
`closeOnTap` - true by default: enable/disable closing on tap on popup       
`backgroundColor` - Color.clear by default: change background color of outside area     
`dismissCallback` - custom callback to call once the popup is dismissed

## Types
### Banner

<img src="https://github.com/danielkmarks23/AlertMessage/blob/media/Banner.gif" width="480" />

```swift
.alertMessage(isPresented: $isActive, type: .banner) {
    HStack {
        Image(systemName: "checkmark.seal")
            .resizable()
            .frame(width: 35, height: 35)
            .foregroundColor(.white)
            .padding()
                
        Text("Added successfully!")
             .foregroundColor(.white)
                
        Spacer()
     }
      .background(Color.green)
}
```

### Centered

<img src="https://github.com/danielkmarks23/AlertMessage/blob/media/Centered.gif" width="480" />

```swift
.alertMessage(isPresented: $isActive, type: .centered) {
    HStack {
        Image(systemName: "checkmark.seal")
            .resizable()
            .frame(width: 35, height: 35)
            .foregroundColor(.white)
            .padding()
                
        Text("Added successfully!")
             .foregroundColor(.white)
                
        Spacer()
     }
      .background(Color.green)
}
```

### Snackbar

<img src="https://github.com/danielkmarks23/AlertMessage/blob/media/Snackbar.gif" width="480" />

```swift
.alertMessage(isPresented: $isActive, type: .snackbar) {
    HStack {
        Image(systemName: "checkmark.seal")
            .resizable()
            .frame(width: 35, height: 35)
            .foregroundColor(.white)
            .padding()
                
        Text("Added successfully!")
             .foregroundColor(.white)
                
        Spacer()
     }
      .background(Color.green)
}
```

## Installation

### [CocoaPods](http://cocoapods.org)

To install `AlertMessage`, simply add the following line to your Podfile:

```ruby
pod 'AlertMessage'
```

### [Swift Package Manager](https://swift.org/package-manager/)

```swift
dependencies: [
    .package(url: "https://github.com/danielkmarks23/AlertMessage.git", from: "1.0.0")
]
```

### Manually

Drop [AlertMessage.swift](https://github.com/danielkmarks23/AlertMessage/blob/master/Sources/AlertMessage/AlertMessage.swift) in your project.

## Requirements

* iOS 15+
* Xcode 13+

## License

AlertMessage is distributed under the MIT license. [See LICENSE](./LICENSE.md) for details.

## Credit
Based on [PopupView](https://github.com/exyte/PopupView)
