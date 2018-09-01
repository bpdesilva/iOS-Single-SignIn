# iOS Single SignIn Demos 

##### Requires Google Firebase Account
##### Requires Google Firebase Project
##### Requires Google Firebase Google-info.plist

For setting up Google SignIn : https://firebase.google.com/docs/auth/ios/google-signin <br />
For setting up Facebook SignIn : https://firebase.google.com/docs/auth/ios/facebook-login <br />
For setting up a Facebook Developer Project : https://developers.facebook.com/ <br />
For Facebook Login intergration guide : https://developers.facebook.com/docs/facebook-login/ios <br />
For Twitter Login intergration guide : https://github.com/twitter/twitter-kit-ios/wiki/Log-In-With-Twitter  <br />
For setting up a Twitter Developer Project :https://apps.twitter.com/  <br />

## Pods Required with Firebase 

### Firebase

  pod 'Firebase/Core' <br />
  pod 'Firebase' <br />
  pod 'FirebaseAuth' <br />
  pod 'FirebaseDatabase' <br />
  pod 'Firebase/Database' <br />
  
### Google SignIn 

  pod 'GoogleSignIn' <br />

### Facebook SignIn

  pod 'FBSDKCoreKit'  <br />
  pod 'FBSDKLoginKit' <br />
  
### Twitter SiginIn

  pod 'TwitterKit' <br />
  
Some Of the above may require configurations with you project **Bundle ID** and changes to **info.plist** file.Final Demo include all three Authentications. Clone include **Google-info.plist** and configure **info.plist** <br />
![alternativetext](iOS-Single-SignIn/Final.png)
