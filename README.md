# Launch Library

#### How to use
Instantiate LaunchLibrary with
```swift
let v: LaunchLibrary = LaunchLibrary()
```

To get all the next launches:
```swift
        v.getLaunches() { (launches: [Launch?]?, error: LaunchLibraryErrors?) in
            if let error = error {
                print(error)
            }
            
            if let launches = launches {
                print(launches)
            }
        }
```

To get launch info by id (gotten with getLaunches())
```swift
        v.getLaunchById(1344) { (launch: CompleteLaunch?, error: LaunchLibraryErrors?) in
            if let error = error {
                print(error)
            }
            
            if let launch = launch {
                print(launch)
            }
        }
```


##IMPORTANT:
This is part of me trying to learn swift, so every help or suggestion about anything would be very appreciated.
