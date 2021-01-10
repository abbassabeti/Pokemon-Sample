# Pokemon-Sample

This is a take-home challenge written by Abbas SabetiNezhad. This is an app which implemented [Pokemon-SDK](https://github.com/abbassabeti/PokemonSDK). Both Logic parts and the main UI Components came from the SDK which is implemented in this source as a Cocoapod. To Find out more, read on.

![screenshot1](https://github.com/abbassabeti/Pokemon-Sample/blob/master/images/scr01.png " ") ![screenshot2](https://github.com/abbassabeti/Pokemon-Sample/blob/master/images/scr02.png " ") ![screenshot3](https://github.com/abbassabeti/Pokemon-Sample/blob/master/images/scr03.png " ")

## Depedencies

This SDK uses:
        - Moya as its Networking Library ( which is a clean wrapper around Alamofire).
        - RxSwift/RxCocoa and peripherals for event handling and stream processing.
        - Kingfisher for caching and loading images asynchronously.
For integration within your own source code, see Installation instructions below.

## Installation

PokemonSDK is available through [CocoaPods](https://cocoapods.org/pods/PokemonSDK). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PokemonSDK'
```

Then, run `pod install` command on the root folder of the project. And Finally, run the app. The SDK has also some tests which is in its own source. There also a pipeline for the test which runs automatically on publish of every new release of it. See SimpleTests.swift in the SDK Repo.

## Author

Abbas SabetiNezhad, abbassabetinejad@gmail.com

## License

PokemonSDK is available under the TrueLayer license. See the LICENSE file for more info.
