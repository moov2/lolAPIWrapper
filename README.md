# lolAPIWrapper

lolAPIWrapper is a light-weight wrapper around League of Legends (LOL) API.
Developed in swift to make it easy for iOS developers to develop applications using LOL API.

## Installation

lolAPIWrapper is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```swift
pod "lolAPIWrapper"
```

## Usage

Import the wrapper at the top of the page  
```swift
import lolAPIWrapper
```

The following snippets will retrieve recent games of the required user
```swift
// Initialise lolWrapper with api key
// For API Key register at https://developer.riotgames.com/
var lolApi = lolApiWrapper().ApiKey("YOUR-API-KEY-HERE");
    
// Call recent games of user id 585897
lolApi.game("/by-summoner/585897/recent")
       .get()
```

## Wrapper detail
 
###  champions
```swift
// Retrieve all champions
lolApi.champion()
       .get()

// Retrieve champion by ID
lolApi.champion("REQUIRED_CHAMPION_ID")
      .get()
```

### Game
```swift
// Get recent games by summoner ID
lolApi.game("/by-summoner/REQUIRED_SUMMONER_ID/recent")
      .get()
```

### League
```swift
// Get leagues mapped by summoner ID for a given list of summoner IDs
lolApi.league("/by-summoner/REQUIRED_SUMMONER_ID")
      .get()

// Get league entries mapped by summoner ID for a given list of summoner IDs
lolApi.league("/by-summoner/REQUIRED_SUMMONER_ID/entry")
      .get()

// Get leagues mapped by team ID for a given list of team IDs
lolApi.league("/by-team/REQUIRED_TEAM_ID")
      .get()

// Get league entries mapped by team ID for a given list of team IDs
lolApi.league("/by-team/REQUIRED_TEAM_ID/entry")
      .get()

// Get challenger tier leagues
lolApi.league("/challenger")
      .get()

// Get master tier leagues
lolApi.league("/master")
      .get()
```

### lol-static-data
```swift
// Retrieves champion list
lolApi.league()
      .get("/champion")

// Retrieves a champion by its id
lolApi.league("/champion/REQUIRED_ID")
      .get()

// Retrieves item list
lolApi.league("/item")
      .get()

// Retrieves item by its unique id
lolApi.league("/item/REQUIRED_ID")
      .get()

// Retrieve language strings data
lolApi.league("/language-strings")
      .get()

// Retrieve supported languages data
lolApi.league("/languages")
      .get()

// Retrieve map data
lolApi.league("/map")
      .get()

// Retrieves mastery list
lolApi.league("/mastery")
      .get()

// Retrieves mastery item by its unique id
lolApi.league("/mastery/REQUIRED_ID")
      .get()

// Retrieve realm data
lolApi.league("/realm")
      .get()

// Retrieves rune list
lolApi.league("/rune")
      .get()

// Retrieves rune by its unique id
lolApi.league("/rune/REQUIRED_ID")
      .get()

// Retrieves summoner spell list
lolApi.league("/summoner-spell")
      .get()

// Retrieves summoner spell by its unique id
lolApi.league("/summoner-spell/REQUIRED_ID")
      .get()

// Retrieve version data
lolApi.league("/versions")
      .get()
```

### Match
```swift
// Retrieve match by match ID
lolApi.match("/REQUIRED_MATCH_ID")
      .get()
```

### Matchlist
```swift
// Retrieve match list by summoner ID
lolApi.matchlist("/by-summoner/REQUIRED_SUMMONER_ID")
      .get()
```

### Stats
```swift
// Get ranked stats by summoner ID
lolApi.stats("/by-summoner/REQUIRED_SUMMONER_ID/ranked")
      .get()

// Get player stats summaries by summoner ID
lolApi.stats("/by-summoner/REQUIRED_SUMMONER_ID/summary")
      .get()
```

### Summoner
```swift
// Get summoner objects mapped by standardized summoner name for a given list of summoner names
lolApi.summoner("/by-name/REQUIRED_SUMMONER_NAME")
      .get()

// Get summoner objects mapped by summoner ID for a given list of summoner IDs
lolApi.summoner("/REQUIRED_SUMMONER_ID")
      .get()

// Get mastery pages mapped by summoner ID for a given list of summoner IDs
lolApi.summoner("/REQUIRED_SUMMONER_ID/masteries")
      .get()

// Get summoner names mapped by summoner ID for a given list of summoner IDs
lolApi.summoner("/REQUIRED_SUMMONER_ID/name")
      .get()

// Get rune pages mapped by summoner ID for a given list of summoner IDs
lolApi.summoner("/REQUIRED_SUMMONER_ID/runes")
      .get()
```

### Team
```swift
// Get teams mapped by summoner ID for a given list of summoner IDs
lolApi.team("/by-summoner/REQUIRED_SUMMONER_ID")
      .get()

// Get teams mapped by team ID for a given list of team IDs
lolApi.summoner("/REQUIRED_TEAM_ID")
      .get()

```

[More detail about LOL api](https://developer.riotgames.com/api/methods)

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Fix NSURLSession/NSURLConnection HTTP load failed (kCFStreamErrorDomainSSL, -9802) error in iOS 9

__The following code is required to be included into info.plist__   
_To open info.plist file in plain text right click on the file then select  Open as > Source Code_  

```swift  
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSExceptionDomains</key>
        <dict>
            <key>api.pvp.net</key>
            <dict>
                <!--Include to allow subdomains-->
                <key>NSIncludesSubdomains</key>
                <true/>
                <!--Include to allow insecure HTTP requests-->
                <key>NSTemporaryExceptionAllowsInsecureHTTPLoads</key>
                <true/>
                <!--Include to specify minimum TLS version-->
                <key>NSTemporaryExceptionMinimumTLSVersion</key>
                <string>TLSv1.2</string>
            </dict>
        </dict>
    </dict>
```

## TODO

- Adding following API calls:  
-- current-game-v1.0   
-- featured-games-v1.0   
-- lol-status-v1.0   
  
- Adding test unit

## License

lolAPIWrapper is available under the MIT license. See the LICENSE file for more info.
