# Aliens Test App

Create a small app to display the news with Reader View

## Requirements

1. Use these URLs from cointelegraph.com to display the news.
2. Use Swift UI
3. Allow users to touch an item of the list of news and show the news. (Show the news in App. Not open by web browsers)
4. Allow users to enable/disable Reader View
5. Submit with Github repo with full commits histories

## Solution
### WKWebView
Starting from iOS 11 WKWebView reader mode is deprecated and can't be used. There are still a few workarounds:
1. Use third-party services as Mercury (https://mercury.postlight.com) to parse the page and emulate reader mode. Pros: easy to use. Cons: requires Mercury apikey to be embedded in the app, takes more time to render the page.
2. Run a custom js script to parse the page and return a reader view like one. Pros: onboard solution. Cons: Depending on the script, could be unstable

The advantage of using WKWebView is UI/UX customization. 

### SFSafariViewController

SFSafariViewController is a native replacement of WKWebView in the case of supporting reader mode. But isn't friendly to UI/UX customization. 

I have chosen this approach, as it is native, stable, and easy to use. But If SFSafariViewController custom UI/UX is a must, I recommend to do some POCs to "hack" SFSafariViewController UI.
1. Swizzle SFSafariViewController webpage rendering
2. Wrap SFSafariViewController in another UIViewController and control edit its frame during the presentation
3. Overlay custom views on top SFSafariViewController